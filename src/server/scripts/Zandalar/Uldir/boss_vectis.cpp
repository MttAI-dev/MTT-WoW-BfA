#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "InstanceScript.h"
#include "Map.h"
#include "MotionMaster.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "TemporarySummon.h"
#include "uldir.h"

enum VectisSpells
{
    SPELL_OMEGA_VECTOR_CLOSEST_TARGET_SELECTOR = 277764,
    SPELL_OMEGA_VECTOR_TARGET_SELECTOR = 276439,
    SPELL_OMEGA_VECTOR_JUMP = 265140,
    SPELL_OMEGA_VECTOR_DAMAGE = 265143,

    SPELL_ENERGY_FILL = 265249,

    SPELL_LINGERING_INFECTION = 281080,
    SPELL_LINGERING_INFECTION_AURA = 265127,

    SPELL_EVOLVING_AFFLICTION = 265178,

    SPELL_CONTAGION = 267242,

    SPELL_GESTATE_TARGET_SELECTOR = 265208,
    SPELL_GESTATE = 265209,
    SPELL_GESTATE_SUMMON = 265215,
    SPELL_GESTATE_DAMAGE = 266077,

    SPELL_LIQUEFY = 265217,
    SPELL_LIQUEFY_CANCEL_COSMETIC = 265291,
   
    SPELL_BLOOD_GEYSER_TARGET_SELECTOR = 265928,
    SPELL_BLOOD_GEYSER_CREATE_AT = 277438,
    SPELL_BLOOD_GEYSER_DAMAGE = 265370,
    SPELL_BLOOD_GEYSER_CAST = 265281,

    SPELL_PLAGUE_BOMB_CAST = 266459,
    SPELL_PLAGUE_BOMB = 266926,
    SPELL_PLAGUE_BOMB_SUMMON_AMALGAM = 266953,
    SPELL_PLAGUE_BOMB_MISSILE_SUMMON = 277542,
    SPELL_PLAGUE_BOMB_AT = 267648,

    SPELL_BURSTING_LESIONS = 274990,

    SPELL_SPAWN_PARASITE = 275053,//Need sniffer for creature 140478. Mythic only

    SPELL_TERMINAL_ERUPTION = 274989,

    SPELL_IMMUNOSUPPRESSION = 265206,

    SPELL_PATHOGEN_BOMB_VISUAL = 269676,
};

enum VectisTexts
{
    SAY_INTRO,
    SAY_GESTATE,
    SAY_PESTILENCE,
    SAY_OMEGA_VECTOR,
    SAY_CONTAGION,
    SAY_LIQUEFY,
    SAY_PLAGUE_BOMB,
    SAY_FESTER,
    SAY_DEATH,
};

enum VectisEvents
{
    EVENT_GESTATE = 1,
    EVENT_CONTAGION,
    EVENT_EVOLVING_AFFLICTION,
    EVENT_LIQUEFY,
    EVENT_BLOOD_GEYSER,
    EVENT_PLAGUE_BOMB,
    EVENT_CHANGE_PHASE,
    EVENT_IMMUNOSUPPRESSION,
};

const int OmegaVectorAuras[4] =
{
 267160,267161, 267162, 267163
};

const Position VectisLiquefyPos[4] =
{
{ 710.08f, -239.776f, 694.698f, 3.85f },
{ 705.77f, -271.224f, 694.698f, 2.73f },
{ 619.86f, -226.085f, 694.698f, 5.43f },
{ 621.06f, -283.571f, 694.698f, 0.73f },
};

const Position PlagueBombPos[12] =
{
{ 640.71f, -264.544f, 694.698f, 3.85f },
{ 629.74f, -264.857f, 694.698f, 2.73f },
{ 618.33f, -264.711f, 694.698f, 5.43f },
{ 678.93f, -264.877f, 694.698f, 0.73f },
{ 688.71f, -264.808f, 694.698f, 3.85f },
{ 698.46f, -264.965f, 694.698f, 2.73f },
{ 698.86f, -256.172f, 694.698f, 5.43f },
{ 689.23f, -256.232f, 694.698f, 0.73f },
{ 679.75f, -256.292f, 694.698f, 3.85f },
{ 668.16f, -256.365f, 694.698f, 2.73f },
{ 629.98f, -247.196f, 694.698f, 5.43f },
{ 618.10f, -247.182f, 694.698f, 0.73f },
};

enum PhaseVectis
{
    PHASE_NONE,
    PHASE_FIRST,     
    PHASE_SECOND,   
};

enum VectisNPCs
{
    NPC_PLAGUE_AMALGAM = 135016,
    NPC_PATHOGEN_BOMB = 135687,

};

///< Uldir Boss Vectis - 134442
struct uldir_boss_vectis : public BossAI
{
    uldir_boss_vectis(Creature* creature) : BossAI(creature, DATA_BOSS_VECTIS) {}

    void Reset() override
    {
        events.Reset();
        phase = 0;
        me->SetReactState(ReactStates::REACT_AGGRESSIVE);

        me->SetPowerType(POWER_ENERGY);
        me->SetPower(POWER_ENERGY, 0);
        me->SetMaxPower(POWER_ENERGY, 100);
        me->RemoveAura(277765);
        instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        instance->SetBossState(DATA_BOSS_VECTIS, NOT_STARTED);
        Clean(instance, me);

    }
    void Clean(InstanceScript* instance, Creature* boss)
    {
        instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_LINGERING_INFECTION_AURA);
        for (int i = 0; i < 4; i++)
        {
            instance->DoRemoveAurasDueToSpellOnPlayers(OmegaVectorAuras[i]);
        }
        std::list<Creature*> npcList;
        boss->GetCreatureListWithEntryInGrid(npcList, NPC_PLAGUE_AMALGAM, 500.0f);
        for (auto amalgam : npcList)
        {
            amalgam->DespawnOrUnsummon();
        }
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        me->GetMotionMaster()->Clear();
        me->GetMotionMaster()->MoveTargetedHome();
        Reset();
        _EnterEvadeMode();
    }
    void EnterCombat(Unit* /*who*/) override
    {
        phase = 1;
        events.ScheduleEvent(EVENT_GESTATE, 9s);
        events.ScheduleEvent(EVENT_EVOLVING_AFFLICTION, 3s);
        events.ScheduleEvent(EVENT_CONTAGION, 20s);
        events.ScheduleEvent(EVENT_LIQUEFY, 90s);
        instance->SetBossState(DATA_BOSS_VECTIS, IN_PROGRESS);
        instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me, 1);
        Talk(SAY_INTRO);
        DoCast(SPELL_OMEGA_VECTOR_TARGET_SELECTOR);

    }

    void JustDied(Unit* /*killer*/)
    {
        Talk(SAY_DEATH);
        instance->SetBossState(DATA_BOSS_VECTIS, DONE);
        Clean(instance, me);
        if (IsMythic())
            instance->DoCompleteAchievement(12529);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            if (phase == PHASE_FIRST)
                switch (eventId)
                {
                case EVENT_CONTAGION:
                {
                    Talk(SAY_CONTAGION);
                    DoCast(SPELL_CONTAGION);
                    events.Repeat(22500);
                    break;
                }
                case EVENT_EVOLVING_AFFLICTION:
                {
                    if (Unit* tank = me->GetVictim())
                        me->AddAura(SPELL_EVOLVING_AFFLICTION, tank);
                    events.Repeat(9500);
                    break;
                }

                case EVENT_GESTATE:
                {
                    Talk(SAY_GESTATE);
                    DoCast(SPELL_GESTATE_TARGET_SELECTOR);
                    events.Repeat(25s);
                    break;
                }
                case EVENT_LIQUEFY:
                {
                    Talk(SAY_LIQUEFY);
                    DoCast(SPELL_LIQUEFY);
                    phase = PHASE_SECOND;
                    events.SetPhase(PHASE_SECOND);
                    events.ScheduleEvent(EVENT_BLOOD_GEYSER, 5s);
                    events.ScheduleEvent(EVENT_PLAGUE_BOMB, 10s);
                    events.ScheduleEvent(EVENT_CHANGE_PHASE, 35s);
                    break;
                }
                }

            if (phase == PHASE_SECOND)
                switch (eventId)
                {

                case EVENT_BLOOD_GEYSER:
                {
                    DoCast(SPELL_BLOOD_GEYSER_CAST);
                    break;
                }
                case EVENT_PLAGUE_BOMB:
                {
                    Talk(SAY_PLAGUE_BOMB);
                    DoCast(SPELL_PLAGUE_BOMB_CAST);
                    events.ScheduleEvent(EVENT_PLAGUE_BOMB, 10s);
                    break;
                }
                case EVENT_CHANGE_PHASE:
                {
                    phase = PHASE_FIRST;
                    events.SetPhase(PHASE_FIRST);
                    DoCast(SPELL_LIQUEFY_CANCEL_COSMETIC);
                    me->RemoveAurasDueToSpell(SPELL_LIQUEFY);
                    me->ClearUnitState(UNIT_STATE_ROOT);
                    events.ScheduleEvent(EVENT_GESTATE, 9s);
                    events.ScheduleEvent(EVENT_EVOLVING_AFFLICTION, 3s);
                    events.ScheduleEvent(EVENT_CONTAGION, 20s);
                    events.ScheduleEvent(EVENT_LIQUEFY, 90s);
                    break;
                }
                }
        }

        DoMeleeAttackIfReady();

    }

private:
    uint8 phase;
};

//135016
struct npc_plague_amalgam : public ScriptedAI
{
    npc_plague_amalgam(Creature* creature) : ScriptedAI(creature) {
    }

    void Reset() override
    {
    }
    void EnterCombat(Unit* /*who*/) override
    {
        events.ScheduleEvent(EVENT_IMMUNOSUPPRESSION, 5s);
    }
    void InitializeAI() override
    {
        ScriptedAI::InitializeAI();
        me->SetReactState(REACT_AGGRESSIVE);
        AddTimedDelayedOperation(800, [this]() -> void
        {
            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true))
            {
                me->getThreatManager().resetAllAggro();
                me->getThreatManager().addThreat(target, 1000000.0f);
                me->GetMotionMaster()->MoveChase(target);
            }
        });
    }

    void UpdateAI(uint32 diff) override
    {
        events.Update(diff);
        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;
        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_IMMUNOSUPPRESSION:
            {
                me->CastSpell(me, SPELL_IMMUNOSUPPRESSION);
                events.ScheduleEvent(EVENT_IMMUNOSUPPRESSION, 10s);
                break;
            }
            }
        }
    }
};

#pragma region Gestate

//265208
class spell_gestate_selector : public SpellScript
{
    PrepareSpellScript(spell_gestate_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
            GetCaster()->CastSpell(hitUnit, SPELL_GESTATE);
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->IsPlayer(); });
        Trinity::Containers::RandomResize(targets, 1);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_gestate_selector::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_gestate_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};
//265212
class spell_gestate : public AuraScript
{
    PrepareAuraScript(spell_gestate);

    void OnPeriodic(AuraEffect const* /*aurEff*/)
    {
        if (Unit* target = GetTarget())
            target->CastSpell(target, SPELL_GESTATE_DAMAGE, true);
    }

    void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Unit* target = GetTarget())
            target->CastSpell(target, SPELL_GESTATE_SUMMON);
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_gestate::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        OnEffectRemove += AuraEffectRemoveFn(spell_gestate::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL);

    }
};

#pragma endregion

#pragma region Omega Vector

//276439
class spell_omega_vector_target_selector : public SpellScript
{
    PrepareSpellScript(spell_omega_vector_target_selector);
    int hosts = 0;
    int count = 0;
    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        printf("%u", count);
        if (count <= 4)
            if (Unit* hitUnit = GetHitUnit())
            {
                hitUnit->CastSpell(hitUnit, OmegaVectorAuras[count]);
                count++;
            }
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->IsPlayer(); });
        hosts = 0;
        count = 0;
        if (Unit* caster = GetCaster())
            //if (InstanceMap* instance = caster->GetInstanceScript()->instance)
        {
            hosts = 1;
            hosts = 4 ? caster->GetInstanceScript()->instance->IsMythic() && hosts >3 : 3 ? hosts > 2 : hosts;
            printf(" numero de jugadores %u", hosts);
        }
        Trinity::Containers::RandomResize(targets, hosts);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_omega_vector_target_selector::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_omega_vector_target_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};

//267160,267161,267162,267163
class spell_omega_vector : public AuraScript
{
    PrepareAuraScript(spell_omega_vector);

    void OnPeriodic(AuraEffect const* /*aurEff*/)
    {
        if (Unit* target = GetTarget())
            target->CastSpell(target, SPELL_OMEGA_VECTOR_DAMAGE, true);
    }

    void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
    {
        //if (GetEffect(EFFECT_0)->GetTickNumber() >= GetEffect(EFFECT_0)->GetTotalTicks())//this prevent a loop in the server when the aura is cleanned before expire
        //    if (Unit* target = GetTarget())
        //    {
        //        Player* nextPlayer = target->SelectNearestPlayer(500.0f);
        //        if (nextPlayer)
        //            target->CastSpell(nextPlayer, GetSpellInfo()->Id);
        //        if (Unit* boss = target->FindNearestCreature(BOSS_VECTIS, 500.0f))
        //        {
        //            boss->Talk(SAY_OMEGA_VECTOR, ChatMsg::CHAT_MSG_RAID_BOSS_WHISPER, 0, nextPlayer);
        //            boss->AddAura(SPELL_LINGERING_INFECTION_AURA, target);
        //        }
        //    }
    }
    void Register() override
    {
        OnEffectRemove += AuraEffectRemoveFn(spell_omega_vector::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL);
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_omega_vector::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
    }
};

#pragma endregion

#pragma region Plague Bomb
class spell_plague_bomb_cast : public SpellScript
{
    PrepareSpellScript(spell_plague_bomb_cast);

    void HandleDummy(SpellEffIndex effIndex)
    {
        if (Unit* caster = GetCaster())
        {
            int length = GetEffectInfo(effIndex)->BasePoints;
            for (int i = 0; i < length; i++)
            {
                Position pos = caster->GetRandomPoint(PlagueBombPos[i], 20);
                caster->CastSpell(pos, SPELL_PLAGUE_BOMB_MISSILE_SUMMON);
            }
            std::list<Creature*> creatureList;
            caster->GetCreatureListWithEntryInGrid(creatureList, 135687, 50.0f);
            for (auto itr : creatureList)
            {
                caster->CastSpell(itr, SPELL_PLAGUE_BOMB);
                itr->CastSpell(itr, SPELL_PLAGUE_BOMB_AT);

            }
        }
    }

    void Register() override
    {
        OnEffectLaunch += SpellEffectFn(spell_plague_bomb_cast::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

//266948
class spell_plague_bomb : public SpellScript
{
    PrepareSpellScript(spell_plague_bomb);

    bool hitplayers = false;
    Unit* bunny;
    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
        {
            if (hitUnit->IsPlayer())
                hitplayers = true;
            else
                if (hitUnit->GetEntry() == NPC_PATHOGEN_BOMB)
                    bunny = hitUnit;
        }
    }
    void HandleSummon()
    {
        if (!hitplayers)
            if (Creature* caster = GetCaster()->ToCreature())
            {
                if (bunny)
                    bunny->CastSpell(bunny, SPELL_PLAGUE_BOMB_SUMMON_AMALGAM);
            }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_plague_bomb::DoEffectHitTarget, EFFECT_1, SPELL_EFFECT_DUMMY);
        AfterCast += SpellCastFn(spell_plague_bomb::HandleSummon);
    }
};
//17917
struct areatrigger_plague_bomb : AreaTriggerAI
{
    areatrigger_plague_bomb(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit)
    {
        if (unit && unit->IsPlayer())
            if (Unit* dummy = unit->FindNearestCreature(NPC_PATHOGEN_BOMB, 10.0f))
                dummy->RemoveAura(SPELL_PATHOGEN_BOMB_VISUAL);
    }
};

#pragma endregion

#pragma region Blood Geyser
//265370
class spell_blood_geyser_damage : public SpellScript
{
    PrepareSpellScript(spell_blood_geyser_damage);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
        {
            if (Creature* vectis = hitUnit->FindNearestCreature(BOSS_VECTIS, 500.0f))
                vectis->CastSpell(hitUnit, SPELL_LINGERING_INFECTION);
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_blood_geyser_damage::DoEffectHitTarget, EFFECT_1, SPELL_EFFECT_DUMMY);
    }
};
//265281
class spell_blood_geyser_aura : public AuraScript
{
    PrepareAuraScript(spell_blood_geyser_aura);

    void OnPeriodic(AuraEffect const* /*aurEff*/)
    {
        /*int count = GetEffect(EFFECT_0)->GetAmount();
        for (int i = 0; i < count; i++)
        {
            if (Unit* caster = GetCaster())
                caster->CastSpell(caster, SPELL_BLOOD_GEYSER_TARGET_SELECTOR);
        }*/
    }
    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_blood_geyser_aura::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
    }
};
//265928
class spell_blood_geyser_cast : public SpellScript
{
    PrepareSpellScript(spell_blood_geyser_cast);

    void HandleDummy(SpellEffIndex effIndex)
    {
        if (Unit* caster = GetCaster())
        {
            caster->CastSpell(caster, SPELL_BLOOD_GEYSER_CREATE_AT);
        }
    }

    void Register() override
    {
        OnEffectLaunch += SpellEffectFn(spell_blood_geyser_cast::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

//19185
void MoveForward(float distance, AreaTrigger* at)
{
    Position movePos;
    float ori = M_PI_2 + M_PI + frand(0.f, M_PI);
    float x = at->GetPositionX() + distance * cos(ori);
    float y = at->GetPositionY() + distance * sin(ori);
    float z = at->GetPositionZ();
    at->GetNearPoint2D(x, y, distance, ori);
    movePos = { x, y, z, ori };
    at->SetDestination(movePos, 3500);
}

struct areatrigger_blood_geyser : AreaTriggerAI
{
    areatrigger_blood_geyser(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit)
    {
        if (unit)
            if (Creature* vectis = unit->FindNearestCreature(BOSS_VECTIS, 500.0f))
                vectis->CastSpell(unit, SPELL_BLOOD_GEYSER_DAMAGE);
    }
    void OnCreate()
    {
        MoveForward(100.0f, this->at);
    }

};
#pragma endregion

class spell_liquefy : public SpellScript
{
    PrepareSpellScript(spell_liquefy);

    void HandleMove()
    {
        if (Unit* caster = GetCaster())
        {
            int liquefypos = urand(0, 4);
            caster->GetMotionMaster()->MovePoint(0, VectisLiquefyPos[liquefypos]);
        }
    }

    void Register() override
    {
        AfterCast += SpellCastFn(spell_liquefy::HandleMove);
    }
};

struct areatrigger_liquefy : AreaTriggerAI
{
    areatrigger_liquefy(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit)
    {
        if (unit)
        {
            if (Creature* vectis = unit->FindNearestCreature(BOSS_VECTIS, 100.0f))
                vectis->CastSpell(unit, SPELL_LINGERING_INFECTION);
        }
    }
};

class spell_contagion : public SpellScript
{
    PrepareSpellScript(spell_contagion);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        /*if (Unit* hitUnit = GetHitUnit())
        {
            if (hitUnit->GetInstanceScript()->instance->IsMythic())
                if (hitUnit->HasAura(SPELL_LINGERING_INFECTION_AURA))
                    switch (hitUnit->GetAura(SPELL_LINGERING_INFECTION_AURA)->GetStackAmount())
                    {
                    case 6:
                        hitUnit->CastSpell(hitUnit, SPELL_BURSTING_LESIONS);
                        break;
                    case 12:
                        hitUnit->CastSpell(hitUnit, SPELL_SPAWN_PARASITE);
                        break;
                    case 25:
                        hitUnit->CastSpell(hitUnit, SPELL_TERMINAL_ERUPTION);
                        break;
                    default:
                        break;
                    }
        
        }*/
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_contagion::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

class spell_burning_lesions : public SpellScript
{
    PrepareSpellScript(spell_burning_lesions);

    void HandleDummy(SpellEffIndex effIndex)
    {
        if (Unit* caster = GetCaster())
        {
            std::list<Player*> playersList;
            ;
            for (auto itr : caster->SelectNearestPlayers(GetEffectInfo(effIndex)->BasePoints))
            {
                if (Creature* vectis = itr->FindNearestCreature(BOSS_VECTIS, 500.0f))
                    vectis->CastSpell(itr, SPELL_LINGERING_INFECTION);
            }
        }
    }

    void Register() override
    {
        OnEffectLaunch += SpellEffectFn(spell_burning_lesions::HandleDummy, EFFECT_1, SPELL_EFFECT_DUMMY);
    }
};

void AddSC_boss_vectis()
{
    RegisterCreatureAI(uldir_boss_vectis);
    RegisterCreatureAI(npc_plague_amalgam);

    RegisterAreaTriggerAI(areatrigger_liquefy);
    RegisterAreaTriggerAI(areatrigger_plague_bomb);
    RegisterAreaTriggerAI(areatrigger_blood_geyser);

    RegisterAuraScript(spell_gestate);
    RegisterAuraScript(spell_omega_vector);
    RegisterAuraScript(spell_blood_geyser_aura);

    RegisterSpellScript(spell_gestate_selector);
    RegisterSpellScript(spell_omega_vector_target_selector);
    RegisterSpellScript(spell_plague_bomb);
    RegisterSpellScript(spell_plague_bomb_cast);
    RegisterSpellScript(spell_liquefy);
    RegisterSpellScript(spell_blood_geyser_damage);
    RegisterSpellScript(spell_blood_geyser_cast);
    RegisterSpellScript(spell_contagion);
    RegisterSpellScript(spell_burning_lesions);
}

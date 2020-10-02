///*Server AtalDazar Core*///


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

enum ZekvozSpells
{
    SPELL_TITAN_SPARK_TARGETS_SELECTOR = 266470,
    SPELL_TITAN_SPARK = 267019,
    SPELL_TITAN_SPARK_SELECTOR = 265061,
    SPELL_TITAN_SPARK_DAMAGE = 264954,
    SPELL_TITAN_SPARK_COSMETIC = 264950,

    SPELL_MIGHT_OF_THE_VOID = 267312,
    SPELL_VOID_LASH_DMG = 265264,
    SPELL_VOID_LASH_TARGET_SELECTOR = 265231,
    SPELL_VOID_LASH_TARGET_SELECTOR_VISION_RANGE = 265268,
    SPELL_VOID_LASH_TARGET_SELECTOR_CONE = 267963,

    SPELL_SHATTER = 265237,
    SPELL_SHATTER_DUMMY = 265248,

    SPELL_EYE_BEAM = 264382,
    SPELL_EYE_BEAM_TARGET_SELECTOR = 264383,

    SPELL_SPAWN_SILITHID_WARRIOR = 266913,
    SPELL_DESPAWN_SILITHID_WARRIOR = 267249,
    SPELL_SKITTERING_SWARM = 275772,
    SPELL_JAGGED_MANDIBLE = 264209,
    SPELL_JAGGED_MANDIBLE_DMG = 261976,

    SPELL_SURGING_DARKNESS_DMG_INT = 265451,
    SPELL_SURGING_DARKNESS_DMG_MID = 265452,
    SPELL_SURGING_DARKNESS_DMG_EXT = 265454,
    SPELL_SURGING_DARKNESS_DMG_EXT_N = 275084,
    SPELL_SURGING_DARKNESS_CIRCLE_INT = 265558,
    SPELL_SURGING_DARKNESS_CIRCLE_MID = 265559,
    SPELL_SURGING_DARKNESS_CIRCLE_EXT_N = 275925, 
    SPELL_SURGING_DARKNESS_CIRCLE_INT_N = 271030,//same size
    SPELL_SURGING_DARKNESS_CIRCLE_MID_N = 271032,
    SPELL_SURGING_DARKNESS_CIRCLE_EXT_H = 271035,

    SPELL_SURGING_DARKNESS_ENERGIZE = 267629,
    SPELL_SURGING_DARKNESS_ENERGY_BAR = 267625,
    SPELL_SURGING_DARKNESS_DMG = 267350,

    //65%
    SPELL_ROILING_DECEIT_TARGET_SELECTOR = 265437,
    SPELL_ROILING_DECEIT = 265358,
    SPELL_ROILING_DECEIT_AT = 265361,
    SPELL_ROILING_DECEIT_AURA = 265360,
    SPELL_ROILING_DECEIT_SUMMON = 265369,
    SPELL_ROILING_DECEIT_SUMMON_GUARD = 265363,
    SPELL_ROILING_DECEIT_DUMMY = 265402,
    SPELL_ROILING_DECEIT_TRANSFORM_SELECTOR = 265434,
    SPELL_ROILING_DECEIT_TRANSFORM = 265435,

    SPELL_ORB_OF_CORRUPTION_IMPACT_VISUAL = 269113,
    SPELL_ORB_OF_CORRUPTION_DUMMY = 267334,
    SPELL_ORB_OF_CORRUPTION = 267239,
    SPELL_ORB_OF_CORRUPTION_TARGET_SELECTOR = 267234,
    SPELL_CORRUPTORS_PATH = 272023,

    SPELL_WILL_OF_THE_CORRUPTOR = 265646,
    SPELL_WILL_OF_THE_CORRUPTO_BEAM = 270717,
    SPELL_WILL_OF_THE_CORRUPTOR_COSMETIC = 276115,
    SPELL_WILL_OF_THE_CORRUPTOR_EXPIRES = 278262,

    SPELL_PSIONIC_BLAST = 270620,
};

enum ZekvozEvents
{
    EVENT_TITAN_SPARK = 1,
    EVENT_MIGHT_OF_THE_VOID,
    EVENT_SURGING_DARKNESS,
    EVENT_EYE_BEAM,
    EVENT_SUMMON_SILITHID_WARRIOR,
    EVENT_ROILING_DECEIT,
    EVENT_SUMMON_NERUBIAN,
    EVENT_ORB_OF_CORRUPTION,
    EVENT_SURGING_DARKNESS_INT,
    EVENT_SURGING_DARKNESS_MID,
    EVENT_SURGING_DARKNESS_EXT,
    EVENT_SURGING_DARKNES_DMG_INT,
    EVENT_SURGING_DARKNES_DMG_MID,
    EVENT_SURGING_DARKNES_DMG_EXT,
};

enum ZekvozTexts
{

};

enum PhaseZekvoz
{
    PHASE_NONE,
    PHASE_FIRST,
    PHASE_SECOND,
    PHASE_THIRD,
};

enum NPCsZekvoz
{
    NPC_EYE_BEAM = 134785,
    NPC_TITAN_SPARK = 134883,
    NPC_YOGG_SARON = 135127,
    NPC_PROJECTION_OF_YOGG_SARON = 135129,
};

///< Uldir Boss Zekvoz - 134445
struct uldir_boss_zekvoz : public BossAI
{
    uldir_boss_zekvoz(Creature* creature) : BossAI(creature, DATA_BOSS_ZEKVOZ) {}

    void Reset() override
    {
        events.Reset();
        phase = 0;
        me->SetReactState(ReactStates::REACT_AGGRESSIVE);

        me->SetPowerType(POWER_ENERGY);
        me->SetPower(POWER_ENERGY, 0);
        /*
        me->SetMaxPower(POWER_ENERGY, 100);*/
        instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        instance->SetBossState(DATA_BOSS_ZEKVOZ, NOT_STARTED);
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
        titansparktimer = 20000;
        me->AddAura(SPELL_SURGING_DARKNESS_ENERGY_BAR);
        me->AddAura(SPELL_SURGING_DARKNESS_ENERGIZE);
        events.ScheduleEvent(EVENT_TITAN_SPARK, 9s);
        events.ScheduleEvent(EVENT_MIGHT_OF_THE_VOID, 3s);
        events.ScheduleEvent(EVENT_ROILING_DECEIT, 16s);
        events.ScheduleEvent(EVENT_SUMMON_SILITHID_WARRIOR, 52s);
        events.ScheduleEvent(EVENT_EYE_BEAM, 51s);
        instance->SetBossState(DATA_BOSS_ZEKVOZ, IN_PROGRESS);
        instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me, 1);

    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage) override
    {

        if (me->HealthBelowPct(65) && !sixtyfivePercent)
        {
            sixtyfivePercent = true;
            phase = PHASE_SECOND;
            events.ScheduleEvent(EVENT_ROILING_DECEIT, 1000);
        }
        if (me->HealthBelowPct(30) && !thirsthyPercent)
        {
            thirsthyPercent = true;
            titansparktimer = 10000;
            phase = PHASE_THIRD;
            events.ScheduleEvent(EVENT_ORB_OF_CORRUPTION, 1000);
        }

    }

    void JustDied(Unit* /*killer*/)
    {
        //Talk(SAY_DEATH);
        instance->SetBossState(DATA_BOSS_ZEKVOZ, DONE);
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
            switch (eventId)
            {
            case EVENT_TITAN_SPARK:
            {
                DoCast(SPELL_TITAN_SPARK);
                events.Repeat(titansparktimer);
                break;
            }
            case EVENT_MIGHT_OF_THE_VOID:
            {
                DoCast(SPELL_MIGHT_OF_THE_VOID);
                events.Repeat(9500);
                break;
            }
            }
            if (phase == PHASE_FIRST)
                switch (eventId)
                {
                case EVENT_EYE_BEAM:
                {
                    DoCast(SPELL_EYE_BEAM_TARGET_SELECTOR);
                    events.Repeat(25s);
                    break;
                }

                case EVENT_SUMMON_SILITHID_WARRIOR:
                {
                    for (int i = 0; i < 6; i++)
                    {
                        me->SummonCreature(134503, me->GetRandomNearPosition(10));
                    }
                }

                case EVENT_ROILING_DECEIT:
                {
                    DoCast(SPELL_ROILING_DECEIT);
                    events.Repeat(15s);
                    break;
                }

                case EVENT_SUMMON_NERUBIAN:
                {
                    for (int i = 0; i < 3; i++)
                    {
                        me->SummonCreature(134503, me->GetRandomNearPosition(15));
                    }
                }

                /*if (phase == PHASE_SECOND)
                switch (eventId)
                {

                case EVENT_BLOOD_GEYSER:
                {
                DoCast(SPELL_BLOOD_GEYSER_CAST);
                break;
                }
                }*/
                }
        }
        DoMeleeAttackIfReady();
    }

private:
    uint8 phase;
    bool sixtyfivePercent;
    bool thirsthyPercent;
    int titansparktimer;
};

struct npc_silithid_warrior : public ScriptedAI
{
    npc_silithid_warrior(Creature* creature) : ScriptedAI(creature) {
    }

    void Reset() override
    {
    }
    void EnterCombat(Unit* /*who*/) override
    {
    }
    void InitializeAI() override
    {
        ScriptedAI::InitializeAI();
        me->CastSpell(me, SPELL_SKITTERING_SWARM);
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
                /*case EVENT_IMMUNOSUPPRESSION:
                {
                break;
                }*/
            }
        }
    }
};

struct npc_surging_darkness : public ScriptedAI
{
    npc_surging_darkness(Creature* creature) : ScriptedAI(creature) {
    }

    void Reset() override
    {
    }
    void EnterCombat(Unit* /*who*/) override
    {
    }
    void InitializeAI() override
    {
        count = 0;
        ScriptedAI::InitializeAI();
        events.ScheduleEvent(RAND(EVENT_SURGING_DARKNESS_INT, EVENT_SURGING_DARKNESS_MID, EVENT_SURGING_DARKNESS_EXT), 1s);
        me->SetReactState(REACT_PASSIVE);
        me->AddUnitState(UNIT_STATE_ROOT);
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
            case EVENT_SURGING_DARKNESS_INT:
            {
                if (count == 3)
                {
                    me->DespawnOrUnsummon();
                    break;
                }
                DoCast(SPELL_SURGING_DARKNESS_CIRCLE_EXT_N);
                DoCast(SPELL_SURGING_DARKNESS_CIRCLE_INT);
                events.ScheduleEvent(EVENT_SURGING_DARKNES_DMG_INT, 7s);
                events.ScheduleEvent(RAND(EVENT_SURGING_DARKNESS_MID, EVENT_SURGING_DARKNESS_EXT), 8s);
                count++;
                break;
            }
            case EVENT_SURGING_DARKNESS_MID:
            {
                if (count == 3)
                {
                    me->DespawnOrUnsummon();
                    break;
                }
                DoCast(SPELL_SURGING_DARKNESS_CIRCLE_MID_N);
                DoCast(SPELL_SURGING_DARKNESS_CIRCLE_INT);
                events.ScheduleEvent(EVENT_SURGING_DARKNES_DMG_MID, 7s);
                events.ScheduleEvent(RAND(EVENT_SURGING_DARKNESS_INT, EVENT_SURGING_DARKNESS_EXT), 8s);
                count++;
                break;
            }
            case EVENT_SURGING_DARKNESS_EXT:
            {
                if (count == 3)
                {
                    me->DespawnOrUnsummon();
                    break;
                }
                DoCast(SPELL_SURGING_DARKNESS_CIRCLE_EXT_N);
                DoCast(SPELL_SURGING_DARKNESS_CIRCLE_MID_N);
                events.ScheduleEvent(EVENT_SURGING_DARKNES_DMG_EXT, 7s);
                events.ScheduleEvent(RAND(EVENT_SURGING_DARKNESS_MID, EVENT_SURGING_DARKNESS_INT), 8s);
                count++;
                break;
            }
            case EVENT_SURGING_DARKNES_DMG_EXT:
            {
                DoCast(SPELL_SURGING_DARKNESS_DMG_EXT_N);
                DoCast(SPELL_SURGING_DARKNESS_DMG_MID);
                break;
            }
            case EVENT_SURGING_DARKNES_DMG_INT:
            {
                DoCast(SPELL_SURGING_DARKNESS_DMG_EXT_N);
                DoCast(SPELL_SURGING_DARKNESS_DMG_INT);
                break;
            }
            case EVENT_SURGING_DARKNES_DMG_MID:
            {
                DoCast(SPELL_SURGING_DARKNESS_DMG_INT);
                DoCast(SPELL_SURGING_DARKNESS_DMG_MID);
                break;
            }
            }
        }
    }
    uint8 count;

};

class spell_eye_beam_selector : public SpellScript
{
    PrepareSpellScript(spell_eye_beam_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
            if (Unit* caster = GetCaster())
                if (Unit* bunny = caster->FindNearestCreature(NPC_EYE_BEAM, 300))
                    bunny->CastSpell(hitUnit, SPELL_EYE_BEAM);
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->IsPlayer(); });
        Trinity::Containers::RandomResize(targets, 1);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_eye_beam_selector::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_eye_beam_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};

#pragma region Might of The Void

//265231
class spell_void_lash_selector : public SpellScript
{
    PrepareSpellScript(spell_void_lash_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
            if (Unit* caster = GetCaster())
            {
                caster->CastSpell(hitUnit, SPELL_VOID_LASH_DMG);
            }
    }
    void HandleShatter()
    {
        if (Unit* caster = GetCaster())
            caster->CastSpell(caster, SPELL_SHATTER_DUMMY);
    }
    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->IsPlayer(); });
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_void_lash_selector::DoEffectHitTarget, EFFECT_1, SPELL_EFFECT_DUMMY);
        AfterCast += SpellCastFn(spell_void_lash_selector::HandleShatter);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_void_lash_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};

class spell_void_second_lash_selector : public SpellScript
{
    PrepareSpellScript(spell_void_second_lash_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
            GetCaster()->CastSpell(hitUnit, SPELL_VOID_LASH_DMG);
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->IsPlayer(); });
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_void_second_lash_selector::DoEffectHitTarget, EFFECT_1, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_void_second_lash_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};

class spell_shatter : public SpellScript
{
    PrepareSpellScript(spell_shatter);

    void HandleDummy(SpellEffIndex effIndex)
    {
        if (Unit* caster = GetCaster())
        {
            caster->CastSpell(caster->GetVictim(), SPELL_SHATTER);
        }
    }
    void HandleVoidLash()
    {
        if (Unit* caster = GetCaster())
        {
            caster->CastSpell(caster, SPELL_VOID_LASH_TARGET_SELECTOR_VISION_RANGE);
        }
    }

    void Register() override
    {
        OnEffectLaunch += SpellEffectFn(spell_shatter::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        AfterCast += SpellCastFn(spell_shatter::HandleVoidLash);
    }
};

class spell_might_of_the_void : public SpellScript
{
    PrepareSpellScript(spell_might_of_the_void);

    void HandleDummy()
    {
        if (Unit* caster = GetCaster())
            caster->CastSpell(caster, SPELL_VOID_LASH_TARGET_SELECTOR);
    }


    void Register() override
    {
        AfterCast += SpellCastFn(spell_might_of_the_void::HandleDummy);
    }
};

#pragma endregion


class spell_roiling_deceit_bunny_selector : public SpellScript
{
    PrepareSpellScript(spell_roiling_deceit_bunny_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
            hitUnit->CastSpell(hitUnit, SPELL_ROILING_DECEIT_DUMMY);
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->GetEntry() == NPC_YOGG_SARON; });
        Trinity::Containers::RandomResize(targets, 1);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_roiling_deceit_bunny_selector::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_roiling_deceit_bunny_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
    }
};

class spell_roiling_deceit_selector : public SpellScript
{
    PrepareSpellScript(spell_roiling_deceit_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* caster = GetCaster())
            if (Unit* hitUnit = GetHitUnit())
                caster->AddAura(SPELL_ROILING_DECEIT_AURA, hitUnit);
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->IsPlayer(); });
        Trinity::Containers::RandomResize(targets, 1);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_roiling_deceit_selector::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_roiling_deceit_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
    }
};

class spell_roiling_deceit_aura : public AuraScript
{
    PrepareAuraScript(spell_roiling_deceit_aura);

    void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
    {
        if (Unit* caster = GetCaster())
        {
            //caster->CastSpell(caster, SPELL_ROILING_DECEIT_SUMMON);
            //In my server don't work so i do it mannually. Change if the spell works
            caster->SummonCreature(134079, caster->GetPosition());
            if (Unit* bunny = caster->FindNearestCreature(134079, 300))
                bunny->AddAura(SPELL_ROILING_DECEIT_AT, bunny);
        }
    }
    void Register() override
    {
        OnEffectRemove += AuraEffectRemoveFn(spell_roiling_deceit_aura::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL);
    }
};

class spell_roiling_deceit_dummy : public SpellScript
{
    PrepareSpellScript(spell_roiling_deceit_dummy);

    void HandleDummy(SpellEffIndex effIndex)
    {
        if (Unit* caster = GetCaster())
            caster->CastSpell(caster, SPELL_ROILING_DECEIT_TARGET_SELECTOR);
    }

    void HandleCosmetics()
    {
        if (Unit* caster = GetCaster())
            caster->CastSpell(caster, SPELL_ROILING_DECEIT_TRANSFORM_SELECTOR);
    }

    void Register() override
    {
        OnEffectLaunch += SpellEffectFn(spell_roiling_deceit_dummy::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        AfterCast += SpellCastFn(spell_roiling_deceit_dummy::HandleCosmetics);
    }
};
class spell_roiling_deceit_transform_selector : public SpellScript
{
    PrepareSpellScript(spell_roiling_deceit_transform_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
            hitUnit->CastSpell(hitUnit, SPELL_ROILING_DECEIT_TRANSFORM);
    }
    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return obj->GetEntry() != NPC_PROJECTION_OF_YOGG_SARON; });
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_roiling_deceit_transform_selector::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_roiling_deceit_transform_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
    }
};

struct areatrigger_ominous_cloud : AreaTriggerAI
{
    areatrigger_ominous_cloud(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit)
    {
        if (unit && unit->IsPlayer())
            if (Unit* dummy = unit->FindNearestCreature(135079, 20.0f))
            {
                dummy->CastSpell(dummy, SPELL_ROILING_DECEIT_SUMMON_GUARD);
                dummy->KillSelf();
            }
    }
};

#pragma region Titan Spark
//264954
class spell_titan_spark_aura : public SpellScript
{
    PrepareSpellScript(spell_titan_spark_aura);

    void HandleDummy(SpellEffIndex effIndex)
    {
        if (Unit* caster = GetCaster())
            if (Unit* target = GetExplTargetUnit())
                caster->CastSpell(target, SPELL_TITAN_SPARK_COSMETIC);
    }

    void Register() override
    {
        OnEffectLaunch += SpellEffectFn(spell_titan_spark_aura::HandleDummy, EFFECT_1, SPELL_AURA_DUMMY);
    }
};

class spell_titan_spark_selector : public SpellScript
{
    PrepareSpellScript(spell_titan_spark_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
            GetCaster()->CastSpell(hitUnit, SPELL_TITAN_SPARK_DAMAGE);
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->IsPlayer() && obj->ToUnit()->HasAura(SPELL_TITAN_SPARK_DAMAGE); });
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_titan_spark_selector::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_titan_spark_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
    }
};
//265061
class spell_titan_spark_bunny_selector : public SpellScript
{
    PrepareSpellScript(spell_titan_spark_bunny_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
            hitUnit->CastSpell(hitUnit, SPELL_TITAN_SPARK_TARGETS_SELECTOR);
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->GetEntry() == NPC_TITAN_SPARK; });
        Trinity::Containers::RandomResize(targets, 1);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_titan_spark_bunny_selector::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_titan_spark_bunny_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
    }
};

#pragma endregion
void AddSC_boss_zekvoz()
{  
    RegisterCreatureAI(uldir_boss_zekvoz);
    RegisterCreatureAI(npc_silithid_warrior);
    RegisterCreatureAI(npc_surging_darkness);

    RegisterSpellScript(spell_eye_beam_selector);
    RegisterSpellScript(spell_void_lash_selector);
    RegisterSpellScript(spell_void_second_lash_selector);
    RegisterSpellScript(spell_shatter);
    RegisterSpellScript(spell_might_of_the_void);
    RegisterSpellScript(spell_roiling_deceit_selector);
    RegisterSpellScript(spell_roiling_deceit_bunny_selector);
    RegisterSpellScript(spell_roiling_deceit_dummy);
    RegisterSpellScript(spell_roiling_deceit_transform_selector);
    RegisterSpellScript(spell_titan_spark_selector);
    RegisterSpellScript(spell_titan_spark_aura);
    RegisterSpellScript(spell_titan_spark_bunny_selector);


    RegisterAuraScript(spell_roiling_deceit_aura);

    RegisterAreaTriggerAI(areatrigger_ominous_cloud);
}

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

enum GhuunSpells
{
    SPELL_EXPLOSIVE_CORRUPTION_TARGET_SELECTOR  = 272504,
    SPELL_EXPLOSIVE_CORRUPTION = 272505,

    SPELL_UNDULATING_MASS = 263321,
    SPELL_UNDULATING_MASS_AT = 263320,
    SPELL_UNDULATING_MASS_AT2 = 271953,

    SPELL_UNCLEAN_CONTAGION = 267657,
    SPELL_UNCLEAN_CONTAGION_AURA = 267659,

    SPELL_CORRUPTING_BITE = 270443,
    SPELL_CORRUPTING_BITE_DMG = 270454,
    SPELL_GROWING_CORRUPTION = 270447,

    SPELL_VIRULENT_CORRUPTION_AT = 272513,
    SPELL_VIRULENT_CORRUPTION = 273486,
    SPELL_VIRULENT_CORRUPTION_AT_HALF = 273540,
    SPELL_VIRULENT_CORRUPTION_AT2 = 277081,

    SPELL_BLIGHTED_GROUND = 270287,
    SPELL_BLIGHTED_GROUND_AT = 270286,

    SPELL_WAVE_OF_CORRUPTION_TARGET_SELECTOR = 270373,
    SPELL_WAVE_OF_CORRUPTION_DMG_N = 273477,
    SPELL_WAVE_OF_CORRUPTION_DMG_H = 270385,
    SPELL_WAVE_OF_CORRUPTION_KNOCK_BACK = 275703,
    SPELL_WAVE_OF_CORRUPTION = 270386,

    SPELL_GAZE_OF_GHUNN = 275160,

    SPELL_POWER_MATRIX_COLLECT = 269455,
    SPELL_POWER_MATRIX = 263372,
    SPELL_POWER_MATRIX_ROOT = 263426,
    SPELL_POWER_MATRIX_DECREASE_SPEED = 263420,
    SPELL_POWER_MATRIX_ENERGIZE = 263433,
    SPELL_POWER_MATRIX_COSMETICS = 263443,

    SPELL_TORMENT = 267427,

    SPELL_REORIGINATION_BLAST_CAST = 267761,
    SPELL_REORIGINATION_BLAST_SELECTOR = 263503,
    SPELL_REORIGINATION_BLAST_STUN = 263504,
    SPELL_REORIGINATION_BLAST_GIBBERING_HORROR_STUN = 263504,
    SPELL_REORIGINATION_BLAST_ENERGIZE= 269439,

    SPELL_COLLAPSE = 276893,
    SPELL_COLLAPSE_PERIODIC = 276839,

    SPELL_IMPERFECT_PHYSIOLOGY = 263436,
    SPELL_IMPERFECT_PHYSIOLOGY_SELECTOR = 273214,

    SPELL_DARK_YOUNG_COSMETIC = 263381,
    SPELL_MASSIVE_SMASH = 267412,

};

enum GhuunTexts
{
	SAY_INTRO,
	SAY_INTRO2,
	SAY_START_COMBAT,
	SAY,
	SAY_THOUSAND_MAWS,
	SAY_THOUSAND_MAWS2,

};

enum GhunnEvents
{
    EVENT_EXPLOSIVE_CORRUPTION= 1,
    EVENT_THOUSAND_MAWS,
    EVENT_POWER_MATRIX,
    EVENT_UNCLEAN_CONTAGION,

    EVENT_CHANGE_PHASE_2,
    //phase 2
    EVENT_WAVE_OF_CORRUPTION,

    //phase 3
    EVENT_MALIGNANT_GROWTH,
    EVENT_GAZE,

    //mobs
    EVENT_TORMENT,
};
enum GhunnPhases
{
    PHASE_NONE,
    PHASE_FIRST,//My Minions are endless
    PHASE_SECOND,// Behold the Power of Ghunn
    PHASE_THIRD,// Your destruction is Assured
};

enum GhunnActions
{
    ACTION_POWER_MATRIX,
};

enum GhunnNPCs
{
    NPC_POWER_MATRIX = 134107,
    NPC_DARK_YOUNG = 138529,
    NPC_CYCLOPEAN_TERROR = 138531,
};

///< Uldir Boss Ghuun - 132998
struct uldir_boss_ghuun : public BossAI
{
    uldir_boss_ghuun(Creature* creature) : BossAI(creature, DATA_BOSS_GHUUN) {
        me->AddUnitState(UNIT_STATE_ROOT);
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        me->GetMotionMaster()->Clear();
        me->GetMotionMaster()->MoveTargetedHome();
        Reset();
        _EnterEvadeMode();
    }
    void Reset()override
    {
        me->AddUnitState(UNIT_STATE_ROOT);
        me->RemoveAura(SPELL_CORRUPTING_BITE);
    }
    void EnterCombat(Unit* /*who*/) override
    {
        phase = 1;
        events.ScheduleEvent(EVENT_EXPLOSIVE_CORRUPTION, 5s);
        events.ScheduleEvent(EVENT_THOUSAND_MAWS, 23s);
        events.ScheduleEvent(EVENT_POWER_MATRIX, 4s);
        events.ScheduleEvent(EVENT_UNCLEAN_CONTAGION, 30s);
        instance->SetBossState(DATA_BOSS_GHUUN, IN_PROGRESS);
        instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me, 1);
        Talk(SAY_INTRO);

    }

    void JustDied(Unit* /*killer*/)
    {
        //Talk(SAY_DEATH);
        instance->SetBossState(DATA_BOSS_GHUUN, DONE);
        if (IsMythic())
            instance->DoCompleteAchievement(12533);
        instance->DoCompleteAchievement(12523);
    }

    void DoAction(const int32 action) override
    {
        switch (action)
        {
        case ACTION_POWER_MATRIX:
            events.ScheduleEvent(EVENT_CHANGE_PHASE_2, 5s);
            break;
        }
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
            case EVENT_EXPLOSIVE_CORRUPTION:
            {
                //Talk(SAY_CONTAGION);
                DoCast(SPELL_EXPLOSIVE_CORRUPTION_TARGET_SELECTOR);
                events.Repeat(26s);
                break;
            }
            case EVENT_THOUSAND_MAWS:
            {
                if (phase != PHASE_FIRST)
                    break;
                Talk(SAY_THOUSAND_MAWS);
                Creature* dark_young = me->FindNearestCreature(NPC_DARK_YOUNG, 500.0f);
                /*if(!dark_young)
                me->SummonCreature(NPC_DARK_YOUNG,)*/
                events.Repeat(9500);
                break;
            }

            case EVENT_POWER_MATRIX:
            {
                bool taked = false;
                for (auto players : me->SelectNearestPlayers(200))
                {
                    if (players->HasAura(SPELL_POWER_MATRIX))
                        taked = true;
                }
                if (!taked)
                    for (auto idx : me->FindNearestCreatures(NPC_POWER_MATRIX, 500.0f))
                    {
                        idx->Talk(0, ChatMsg::CHAT_MSG_RAID_BOSS_EMOTE, 1, idx->FindNearestCreature(BOSS_GHUUN, 500.0f));
                        idx->CastSpell(idx, SPELL_POWER_MATRIX_COSMETICS);
                        idx->AddNpcFlag(UNIT_NPC_FLAG_SPELLCLICK);
                    }
                events.Repeat(25s);
                break;
            }
            case EVENT_CHANGE_PHASE_2:
            {
                events.SetPhase(PHASE_SECOND);
                phase = 2;
                me->ClearUnitState(UNIT_STATE_ROOT);
                DoCast(SPELL_CORRUPTING_BITE);
            }
            case EVENT_GAZE:
            {
                if (phase != PHASE_THIRD)
                    break;
                DoCast(SPELL_GAZE_OF_GHUNN);
                break;
            }
            }
        }

        DoMeleeAttackIfReady();

    }


private:
    int8 phase;
};

struct npc_power_matrix : ScriptedAI
{
    npc_power_matrix(Creature* creature) : ScriptedAI(creature)
    {
    }

    void OnSpellClick(Unit* clicker, bool& /*result*/)
    {
        clicker->CastSpell(clicker, SPELL_POWER_MATRIX_COLLECT);
        me->RemoveAura(SPELL_POWER_MATRIX_COSMETICS);
    }
};

struct npc_amorphous_cyst : public ScriptedAI
{
    npc_amorphous_cyst(Creature* creature) : ScriptedAI(creature) {
    }

    void EnterCombat(Unit* /*who*/) override
    {
    }
    void InitializeAI() override
    {
        me->AddUnitState(UNIT_STATE_ROOT);
        me->CastSpell(me, SPELL_UNDULATING_MASS_AT);
        ScriptedAI::InitializeAI();
    }
};
//138531
struct npc_cyclopean_terror : public ScriptedAI
{
    npc_cyclopean_terror(Creature* creature) : ScriptedAI(creature) {
    }

    void EnterCombat(Unit* /*who*/) override
    {
        events.ScheduleEvent(EVENT_TORMENT, 5s);
    }
    void InitializeAI() override
    {
        ScriptedAI::InitializeAI();
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
            case EVENT_TORMENT:
            {
                Player* player = me->SelectRandomPlayerInRange(100.0f, true);
                if (player)
                    me->CastSpell(player, SPELL_TORMENT);
                events.ScheduleEvent(EVENT_TORMENT, 20s);
                break;
            }
            }
        }
    }
};

struct npc_dark_young : public ScriptedAI
{
    npc_dark_young(Creature* creature) : ScriptedAI(creature) {
    }

    void EnterCombat(Unit* /*who*/) override
    {
        events.ScheduleEvent(EVENT_TORMENT, 5s);
    }
    void InitializeAI() override
    {
        ScriptedAI::InitializeAI();
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
            case EVENT_TORMENT:
            {
                Player* player = me->SelectRandomPlayerInRange(100.0f, true);
                if (player)
                    me->CastSpell(player, SPELL_TORMENT);
                events.ScheduleEvent(EVENT_TORMENT, 20s);
                break;
            }
            }
        }
    }
};

//272504
class spell_explosive_corruption_selector : public SpellScript
{
    PrepareSpellScript(spell_explosive_corruption_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
        {
            GetCaster()->CastSpell(hitUnit, SPELL_EXPLOSIVE_CORRUPTION);
        }
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->IsPlayer(); });
        Trinity::Containers::RandomResize(targets, 1);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_explosive_corruption_selector::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_explosive_corruption_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};
//274506
class spell_explosive_corruption : public AuraScript
{
    PrepareAuraScript(spell_explosive_corruption);

    void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        printf("remove");
        if (Unit* target = GetTarget())
            target->CastSpell(target, SPELL_BLIGHTED_GROUND_AT);
    }

    void Register() override
    {
        OnEffectRemove += AuraEffectRemoveFn(spell_explosive_corruption::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL);
    }
};

//270373
class spell_wave_of_corruption_selector : public SpellScript
{
    PrepareSpellScript(spell_wave_of_corruption_selector);

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (Unit* hitUnit = GetHitUnit())
            GetCaster()->CastSpell(hitUnit, SPELL_WAVE_OF_CORRUPTION);
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        targets.remove_if([](WorldObject* obj) { return !obj->IsPlayer(); });
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_wave_of_corruption_selector::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_wave_of_corruption_selector::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};

//269455
class spell_power_matrix_cast : public SpellScript
{
    PrepareSpellScript(spell_power_matrix_cast);

    void HandleDummy(SpellEffIndex effIndex)
    {
        if (Unit* caster = GetCaster())
        {
            caster->AddAura(SPELL_POWER_MATRIX, caster);
            if (!caster->GetInstanceScript()->instance->IsMythic())
                for (auto idx : caster->FindNearestCreatures(NPC_POWER_MATRIX, 500.0f))
                {
                    idx->RemoveAura(SPELL_POWER_MATRIX_COSMETICS);
                    idx->RemoveNpcFlag(UNIT_NPC_FLAG_SPELLCLICK);
                }
            else
            {
                Creature* power_matrix = caster->FindNearestCreature(NPC_POWER_MATRIX, 100.0f);
                power_matrix->RemoveAura(SPELL_POWER_MATRIX_COSMETICS);
                power_matrix->RemoveNpcFlag(UNIT_NPC_FLAG_SPELLCLICK);
            }
        }
    }

    void Register() override
    {
        OnEffectLaunch += SpellEffectFn(spell_power_matrix_cast::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};
//265281
class spell_power_matrix_aura : public AuraScript
{
    PrepareAuraScript(spell_power_matrix_aura);

    void OnPeriodic(AuraEffect const* /*aurEff*/)
    {
        if (Unit* caster = GetCaster())
            caster->CastSpell(caster, SPELL_POWER_MATRIX_DECREASE_SPEED);
    }
    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_power_matrix_aura::OnPeriodic, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY);
    }
};

class PlayerScript_unclean_corruption : public PlayerScript
{
public:
    PlayerScript_unclean_corruption() : PlayerScript("PlayerScript_unclean_corruption") {}

    void OnPlayerUpdateMovement(Player* player)
    {
        if (player->GetMap()->GetEntry()->ID == 1861)
            if (player->HasAura(SPELL_UNCLEAN_CONTAGION))
            {
                if (player->GetPositionZ() < 465)
                {
                    player->RemoveAura(SPELL_UNCLEAN_CONTAGION);
                    player->RemoveAura(SPELL_UNCLEAN_CONTAGION_AURA);
                }
            }
            else
            {
                if (player->GetPositionZ() > 465 && player->GetPositionZ()<475)
                    player->CastSpell(player, SPELL_UNCLEAN_CONTAGION);
            }
    }
};
//17350, 18108
struct areatrigger_undulating_mass : AreaTriggerAI
{
    areatrigger_undulating_mass(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit)
    {
        if (unit)
            unit->CastSpell(unit, SPELL_UNDULATING_MASS);
    }
    void OnUnitExit(Unit* unit)
    {
        if (unit)
            unit->RemoveAura(SPELL_UNDULATING_MASS);
    }
    void OnPeriodicProc()
    {
        float scale = at->GetObjectScale();
    }
};
//17948
struct areatrigger_blighted_corruption : AreaTriggerAI
{
    areatrigger_blighted_corruption(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit)
    {
        if (unit)
            unit->CastSpell(unit, SPELL_BLIGHTED_GROUND);
    }
    void OnUnitExit(Unit* unit)
    {
        if (unit)
            unit->RemoveAura(SPELL_BLIGHTED_GROUND);
    }
};
struct areatrigger_virulent_corruption : AreaTriggerAI
{
    areatrigger_virulent_corruption(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit)
    {
        if (unit)
        {
            unit->CastSpell(unit, SPELL_VIRULENT_CORRUPTION);
            if (unit->GetInstanceScript()->instance->IsHeroic())
                unit->CastSpell(unit, SPELL_EXPLOSIVE_CORRUPTION);
        }
    }
};

void AddSC_boss_ghuun()
{
    RegisterCreatureAI(uldir_boss_ghuun);
    RegisterCreatureAI(npc_amorphous_cyst);
    RegisterCreatureAI(npc_cyclopean_terror);
    RegisterCreatureAI(npc_power_matrix);

    RegisterSpellScript(spell_explosive_corruption_selector);
    RegisterSpellScript(spell_wave_of_corruption_selector);
    RegisterSpellScript(spell_power_matrix_cast);

    RegisterAuraScript(spell_power_matrix_aura);
    RegisterAuraScript(spell_explosive_corruption);

    RegisterPlayerScript(PlayerScript_unclean_corruption);

    RegisterAreaTriggerAI(areatrigger_undulating_mass);
    RegisterAreaTriggerAI(areatrigger_blighted_corruption);
    RegisterAreaTriggerAI(areatrigger_virulent_corruption);
}

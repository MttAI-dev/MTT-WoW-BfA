
#include "nyalotha.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "CombatAI.h"
#include "Conversation.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "InstanceScript.h"
#include "ScriptMgr.h"
#include "Spell.h"
#include "SpellAuras.h"


const Position annex_of_prophecy_platform_wrathion_pos = { -1706.0f, -44.0f, -518.0f, 3.14f };
const Position annex_of_prophecy_platform_pos = { -1760.0f, -43.0f, -518.0f, 6.26f };
const Position ashwalker_assasin_pos { -1729.0f, -85.0f, -1475.0f, 2.0f };

const Position wrathion_room_center = { -1756.909424f, -43.431221f, -1477.871826f, 6.270624f };

enum WrathionBlisterSide
{
    CATACLYSM_POS_SOUTH   = 0,
    CATACLYSM_POS_WEST    = 1,
    CATACLYSM_POS_EAST    = 2,
    CATACLYSM_POS_NORTH   = 3,
};

const Position wrathion_burning_cataclysm_positions[4] = {
    { -1828.8824f, -43.157169f, -1477.873657f }, // South
    { -1759.8195f, 6.375f,      -1476.1115f   }, // West
    { -1760.3156f, -92.938530f, -1477.557861f }, // East
    { -1688.3801f, -43.461460f, -1477.789429f }, // North
};

const Position wrathion_center_square[2] = {
    { -1792.639893f, -12.733096f, -1478.160278f }, // Bottom left
    { -1718.550415f, -73.556931f, -1478.160278f }, // Top right
};

const Position wrathion_scorching_blister_positions[20] = {
    { -1818.4462f, -53.36111f,  -1477.9269f }, // South
    { -1818.6962f, -35.100697f, -1477.9023f }, // South
    { -1790.6823f, -8.862847f,  -1477.5057f }, // West
    { -1758.8281f, -3.8958333f, -1477.9944f }, // West
    { -1758.6137f, -84.570396f, -1477.8377f }, // East
    { -1788.8361f, -85.281670f, -1477.5578f }, // East
    { -1699.5662f, -31.777704f, -1477.7893f }, // North
    { -1699.3105f, -53.476192f, -1477.7888f }, // North
    { -1817.9983f, -73.68403f,  -1477.8148f },
    { -1728.6459f, -82.80903f,  -1477.4031f },
    { -1729.2483f, -53.543404f, -1477.8475f },
    { -1789.6024f, -50.96875f,  -1477.9846f },
    { -1757.8959f, -57.526043f, -1477.8907f },
    { -1698.6892f, -11.520833f, -1477.8252f },
    { -1818.7344f, -14.232639f, -1477.3846f },
    { -1789.981f,  -35.161457f, -1477.9846f },
    { -1729.3524f, -32.689236f, -1478.168f  },
    { -1757.8767f, -29.70139f,  -1478.0984f },
    { -1729.3802f, -4.717014f,  -1478.0111f },
    { -1700.9210f, -76.174034f, -1477.5568f },
};

enum WrathionTexts
{
    SAY_AGGRO                       = 0,
    SAY_INCINERATION                = 1,
    SAY_BURNING_CATACLYSM           = 2,
    SAY_SMOKE_AND_MIRRORS           = 3,
    SAY_END_OF_SMOKE_AND_MIRRORS    = 4,
    SAY_KILL                        = 5,
    SAY_WIPE                        = 6,
    SAY_DEATH                       = 7,
};

enum Phases
{
    PHASE_1 = 1,
    PHASE_2 = 2,
};

enum Spells
{
    /// Intro

    SPELL_WRATHION_INITIAL_TRANSFORM                    = 315140,
    SPELL_INTRO_CONVERSATION                            = 314697,
    SPELL_ENERGY_BAR_COLOR                              = 315294,

    /// Phase 1

    // Searing Breath
    SPELL_SEARING_BREATH_VISUAL                         = 316875,
    SPELL_SEARING_BREATH_TARGETS                        = 313973,
    SPELL_SEARING_BREATH_DAMAGE                         = 305978,
    SPELL_SEARING_ARMOR                                 = 306015,

    // Tail Swipe
    SPELL_TAIL_SWIPE                                    = 307974,

    // Incineration
    SPELL_INCINERATION_TARGETS                          = 306111,
    SPELL_INCINERATION                                  = 306163,
    SPELL_INCINERATION_EXPLOSION                        = 306247,

    // Gale Blast
    SPELL_GALE_BLAST                                    = 306289,
    SPELL_GALE_BLAST_TARGETS                            = 307041,
    SPELL_GALE_BLAST_MISSILE                            = 307047,

    // Burning Cataclysm
    SPELL_BURNING_CATACLYSM_TELEPORT_VISUAL             = 306956,
    SPELL_BURNING_CATACLYSM_TELEPORT                    = 306949,
    SPELL_BURNING_CATACLYSM                             = 306735,

    SPELL_SCORCHING_BLISTER_MISSILE                     = 312676,
    SPELL_SCORCHING_BLISTER_CREATE_AT                   = 312490,
    SPELL_SCORCHING_BLISTER_AT_DAMAGE                   = 313959,
    SPELL_SCORCHING_BLISTER_EXPLOSION                   = 312698,

    // Molten Eruption
    SPELL_MOLTEN_ERUPTION_VISUAL                        = 306788,
    SPELL_MOLTEN_ERUPTION_MISSILE                       = 306789,
    SPELL_MOLTEN_ERUPTION_EXPLOSION                     = 306898,
    SPELL_MOLTEN_ERUPTION_WAIT_VISUAL                   = 306820,
    SPELL_MOLTEN_ERUPTION_SPAWN_VISUAL                  = 307205,

    /// Phase 2

    SPELL_BEGIN_OF_PHASE_2_CONVERSATION                 = 307458,
    SPELL_END_OF_PHASE_2                                = 306947,
    SPELL_END_OF_PHASE_2_CONVERSATION                   = 307458,

    // Crackling Shards
    SPELL_CRACKLING_SHARD_SUMMON_TARGETS                = 308894,
    SPELL_CRACKLING_SHARD_SUMMON                        = 308905,
    SPELL_CRACKLING_SHARD_CREATE_AT                     = 308907,
    SPELL_MOLTEN_ERUPTION_MARK                          = 306899,
    SPELL_PYROCLASTIC_FLOW                              = 307017,
    SPELL_LAVA_POOL_AT                                  = 307031,
    SPELL_LAVA_POOL_AT_DAMAGE                           = 307053,
    SPELL_RISING_HEAT                                   = 311362,

    // Scale of Wrathion
    SPELL_SCALES_OF_WRATHION_MISSILE                    = 308679,
    SPELL_SCALES_OF_WRATHION_DAMAGE                     = 308682,
    SPELL_BURNING_MADNESS                               = 307013,

    // Smoke And Mirros
    SPELL_SMOKE_AND_MIRRORS                             = 306995,
    SPELL_SMOKE_AND_MIRRORS_ENDING                      = 307051,

    // Creeping Madness
    SPELL_CREEPING_MADNESS_TARGETS                      = 313253,
    SPELL_CREEPING_MADNESS                              = 313250,
    SPELL_CREEPING_MADNESS_SLOW                         = 313255,
    SPELL_CREEPING_MADNESS_DAMAGE                       = 314414,

    // Assassin spells
    SPELL_ASSASSIN_CREATION_MISSILE                     = 316929,
    SPELL_ASSASSIN_SPAWN                                = 316940,
    SPELL_SMOKE_SHROUD                                  = 312266,
    SPELL_NOXIOUS_CHOKE                                 = 314347,
    SPELL_DARK_AMBUSH                                   = 314373,


    SPELL_BERSERK                                       = 301495,
};

Position GetRandomRoomPosition()
{
    float x = frand(wrathion_center_square[0].GetPositionX(), wrathion_center_square[1].GetPositionX());
    float y = frand(wrathion_center_square[1].GetPositionY(), wrathion_center_square[0].GetPositionY());
    return Position(x, y, wrathion_center_square[0].GetPositionZ());
}

// 156818
struct boss_wrathion : public BossAI
{
    boss_wrathion(Creature* creature) : BossAI(creature, DATA_WRATHION)
    {
        me->AddAura(SPELL_WRATHION_INITIAL_TRANSFORM);
        me->AddUnitFlag(UnitFlags(UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC));

        _introDone = false;
    }

    void Reset() override
    {
        BossAI::Reset();

        if (!_introDone)
        {
            me->GetScheduler().Schedule(5s, [](TaskContext context)
            {
                GetContextUnit()->CastSpell(nullptr, SPELL_INTRO_CONVERSATION, true);
            }).Schedule(34s, [](TaskContext context)
            {
                GetContextUnit()->RemoveAurasDueToSpell(SPELL_WRATHION_INITIAL_TRANSFORM);
            }).Schedule(35s, [](TaskContext context)
            {
                GetContextUnit()->RemoveUnitFlag(UnitFlags(UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC));
                GetContextCreature()->setFaction(14);
            });

            _introDone = true;
        }

        me->SetPowerType(POWER_ENERGY);
        me->SetPower(POWER_ENERGY, 100);
        me->CastSpell(me, SPELL_ENERGY_BAR_COLOR, true);

        me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE));
        me->RemoveUnitFlag2(UnitFlags2(UNIT_FLAG2_SELECTION_DISABLED));
    }

    void EnterCombat(Unit* u) override
    {
        BossAI::EnterCombat(u);

        Talk(SAY_AGGRO);
        SchedulePhase1();
    }

    void SchedulePhase1()
    {
        events.ScheduleEvent(SPELL_SEARING_BREATH_VISUAL,               8s,  PHASE_1);
        events.ScheduleEvent(SPELL_TAIL_SWIPE,                          1s,  PHASE_1);
        events.ScheduleEvent(SPELL_INCINERATION_TARGETS,                20s, PHASE_1);
        events.ScheduleEvent(SPELL_GALE_BLAST,                          90s, PHASE_1);
        events.ScheduleEvent(SPELL_BURNING_CATACLYSM_TELEPORT_VISUAL,   20s, PHASE_1);

        if (IsMythic())
            events.ScheduleEvent(SPELL_CREEPING_MADNESS_TARGETS,        30s, PHASE_1);
    }

    void SchedulePhase2()
    {
        me->CastSpell(me, SPELL_BEGIN_OF_PHASE_2_CONVERSATION, true);
        me->CastSpell(me, SPELL_SMOKE_AND_MIRRORS, true);

        events.ScheduleEvent(SPELL_SCALES_OF_WRATHION_MISSILE,      3s,     PHASE_2);
        events.ScheduleEvent(SPELL_CRACKLING_SHARD_SUMMON_TARGETS,  3s,     PHASE_2);

        if (IsHeroic())
            for (uint8 i = 0; i < 3; ++i)
                me->CastSpell(GetRandomRoomPosition(), SPELL_ASSASSIN_CREATION_MISSILE, true);
    }

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
            // Phase 1
            case SPELL_SEARING_BREATH_VISUAL:
                DoCastAOE(SPELL_SEARING_BREATH_VISUAL);
                events.Repeat(8s);
                break;
            case SPELL_TAIL_SWIPE:
                if (SelectTarget(SELECT_TARGET_RANDOM, 0, BehindTargetSelector(me)))
                {
                    DoCastAOE(SPELL_TAIL_SWIPE);
                    events.Repeat(3s);
                }
                else
                    events.Repeat(1s);
                break;
            case SPELL_INCINERATION_TARGETS:
                DoCastAOE(SPELL_INCINERATION_TARGETS);
                events.Repeat(20s);
                break;
            case SPELL_GALE_BLAST:
                DoCastAOE(SPELL_GALE_BLAST);
                events.Repeat(40s);
                break;
            case SPELL_BURNING_CATACLYSM_TELEPORT_VISUAL:
                events.CancelEventGroup(PHASE_1);
                me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE));
                me->AddUnitFlag2(UnitFlags2(UNIT_FLAG2_SELECTION_DISABLED));
                _cataclysmPosition = urand(CATACLYSM_POS_SOUTH, CATACLYSM_POS_NORTH);
                me->CastSpell(wrathion_burning_cataclysm_positions[_cataclysmPosition], SPELL_BURNING_CATACLYSM_TELEPORT_VISUAL, false);
                break;
            case SPELL_CREEPING_MADNESS_TARGETS:
                me->CastSpell(me, SPELL_CREEPING_MADNESS_TARGETS, false);
                events.Repeat(30s);
                break;
            // Phase 2
            case SPELL_SCALES_OF_WRATHION_MISSILE:

                // We have to hack the areatrigger creation because of the way Trinity handle spell speed
                // On retail, speed only affect missiles and EFFECT_1 should be handled immediatly,
                // On TC, speed also affect non-missiles effects
                if (SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(SPELL_SCALES_OF_WRATHION_MISSILE))
                {
                    if (SpellEffectInfo const* effectInfo = spellInfo->GetEffect(GetDifficulty(), EFFECT_1))
                    {
                        Position destPos = GetRandomRoomPosition();

                        me->CastSpell(destPos, SPELL_SCALES_OF_WRATHION_MISSILE, true);
                        AreaTrigger::CreateAreaTrigger(effectInfo->MiscValue, me, nullptr, spellInfo, destPos, spellInfo->GetDuration(), me->GetCastSpellXSpellVisualId(spellInfo));
                    }
                }

                events.Repeat(10s);
                break;
            case SPELL_CRACKLING_SHARD_SUMMON_TARGETS:
                me->CastSpell(nullptr, SPELL_CRACKLING_SHARD_SUMMON_TARGETS, true);
                break;
        }
    }

    void OnSpellFinished(SpellInfo const* spellInfo) override
    {
        switch (spellInfo->Id)
        {
            case SPELL_SEARING_BREATH_VISUAL:
                DoCastVictim(SPELL_SEARING_BREATH_TARGETS, true);
                break;
            case SPELL_BURNING_CATACLYSM:
                me->ModifyPower(POWER_ENERGY, -50);

                if (me->GetPower(POWER_ENERGY) <= 0)
                    SchedulePhase2();
                else
                    SchedulePhase1();

                me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE));
                me->RemoveUnitFlag2(UnitFlags2(UNIT_FLAG2_SELECTION_DISABLED));

                break;
            case SPELL_SMOKE_AND_MIRRORS_ENDING:
                me->CastSpell(me, SPELL_END_OF_PHASE_2, false);
                me->CastSpell(me, SPELL_END_OF_PHASE_2_CONVERSATION, true);
                me->SetPower(POWER_ENERGY, 100);
                events.CancelEventGroup(PHASE_2);
                me->GetScheduler().Schedule(5s, [this](TaskContext /*context*/)
                {
                    SchedulePhase1();
                });
                break;
        }
    }

    void DoAction(int32 action) override
    {
        switch (action)
        {
            case SPELL_SCORCHING_BLISTER_MISSILE:
                for (uint8 i = 0; i < 20; ++i)
                {
                    uint8 noSpawnPos = GetOppositeSide(WrathionBlisterSide(_cataclysmPosition)) * 2;
                    if (i == noSpawnPos || i == (noSpawnPos + 1))
                        continue;

                    me->CastSpell(wrathion_scorching_blister_positions[i], SPELL_SCORCHING_BLISTER_MISSILE, true);
                }
                break;
            default:
                break;
        }
    }

    void SummonedCreatureDespawn(Creature* creature) override
    {
        BossAI::SummonedCreatureDespawn(creature);

        if (me->HasAura(SPELL_SMOKE_AND_MIRRORS))
            if (!summons.HasEntry(NPC_CRACKLING_SHARD))
                me->RemoveAurasDueToSpell(SPELL_SMOKE_AND_MIRRORS);
    }

private:
    uint8 GetOppositeSide(WrathionBlisterSide side)
    {
        switch (side)
        {
            case CATACLYSM_POS_SOUTH: return CATACLYSM_POS_NORTH;
            case CATACLYSM_POS_WEST:  return CATACLYSM_POS_EAST;
            case CATACLYSM_POS_EAST:  return CATACLYSM_POS_WEST;
            default:
            case CATACLYSM_POS_NORTH: return CATACLYSM_POS_SOUTH;
        }
    }

    bool _introDone = false;
    uint8 _cataclysmPosition = CATACLYSM_POS_SOUTH;
};

// 12960
// 12301
// 12303
// 12304
// 12305
struct conversation_wrathion : public ConversationScript
{
    conversation_wrathion() : ConversationScript("conversation_wrathion") { }

    void OnConversationCreate(Conversation* conversation, Unit* creator) override
    {
        conversation->AddActor(creator->GetGUID(), 0);
    }
};

// 157348
struct npc_molten_eruption_stalker : public ScriptedAI
{
    npc_molten_eruption_stalker(Creature* c) : ScriptedAI(c) { }

    void Reset() override
    {
        DoCastAOE(SPELL_MOLTEN_ERUPTION_WAIT_VISUAL);
    }

    void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override
    {
        if (spell->Id == SPELL_CRACKLING_SHARD_SUMMON_TARGETS)
        {
            me->CastSpell(me, SPELL_CRACKLING_SHARD_SUMMON, true);
            me->DespawnOrUnsummon(100ms);
        }
    }
};

// 158327
struct npc_crackling_shard : public ScriptedAI
{
    npc_crackling_shard(Creature* c) : ScriptedAI(c) { }

    void Reset() override
    {
        if (InstanceScript* instance = me->GetInstanceScript())
        {
            if (Creature* wrathion = instance->GetCreature(NPC_WRATHION))
            {
                if (TempSummon* tempSummonMe = me->ToTempSummon())
                {
                    tempSummonMe->SetSummonerGUID(wrathion->GetGUID());
                    wrathion->AI()->JustSummoned(me);
                }
            }
        }

        me->CastSpell(me, SPELL_CRACKLING_SHARD_CREATE_AT, true);

        me->GetScheduler().Schedule(1s, [](TaskContext context)
        {
            GetContextUnit()->SetAIAnimKitId(13792);
            GetContextUnit()->PlayObjectSound(142395);
        });
    }

    void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override
    {
        if (spell->Id == SPELL_SMOKE_AND_MIRRORS_ENDING)
        {
            me->CastSpell(me, SPELL_LAVA_POOL_AT, true);
            me->DespawnOrUnsummon(100ms);
        }
    }

    void JustDied(Unit* /*attacker*/) override
    {
        me->CastSpell(nullptr, SPELL_PYROCLASTIC_FLOW, true);
    }
};

// 160291
struct npc_ashwalker_assasin : public CombatAI
{
    npc_ashwalker_assasin(Creature* c) : CombatAI(c) { }

    void Reset() override
    {
        CombatAI::Reset();
        DoCastAOE(SPELL_ASSASSIN_SPAWN);

        me->GetScheduler().Schedule(2s, [this](TaskContext /*context*/)
        {
            me->CastSpell(me, SPELL_SMOKE_SHROUD, true);
            me->SetInCombatWithZone();
        });
    }
};

// 313973 - Searing Breath
class spell_wrathion_searing_breath_targets : public SpellScript
{
    PrepareSpellScript(spell_wrathion_searing_breath_targets);

    void HandleHitTarget(SpellEffIndex effIndex)
    {
        if (Unit* target = GetHitUnit())
        {
            GetCaster()->CastSpell(target, SPELL_SEARING_BREATH_DAMAGE, true);
            GetCaster()->CastSpell(target, SPELL_SEARING_ARMOR, true);
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_wrathion_searing_breath_targets::HandleHitTarget, EFFECT_1, SPELL_EFFECT_DUMMY);
    }
};

// 306111 - Incineration targets
class spell_wrathion_incineration_targets : public SpellScript
{
    PrepareSpellScript(spell_wrathion_incineration_targets);

    void FilterTargets(std::list<WorldObject*>& targetsList)
    {
        std::list<WorldObject*> tempTargets;
        for (auto target : targetsList)
            if (Player* playerTarget = target->ToPlayer())
                if (playerTarget->GetRoleForGroup() != ROLE_TANK)
                    tempTargets.push_back(playerTarget);

        Trinity::Containers::RandomResize(tempTargets, 3);

        targetsList = tempTargets;
    }

    void HandleHitTarget(SpellEffIndex effIndex)
    {
        if (Unit* target = GetHitUnit())
            GetCaster()->CastSpell(target, SPELL_INCINERATION, true);
    }

    void Register() override
    {
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_wrathion_incineration_targets::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
        OnEffectHitTarget += SpellEffectFn(spell_wrathion_incineration_targets::HandleHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 306163 - Incineration
class aura_wrathion_incineration : public AuraScript
{
    PrepareAuraScript(aura_wrathion_incineration);

    void HandleRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Unit* caster = GetTarget())
            caster->CastSpell(GetTarget(), SPELL_INCINERATION_EXPLOSION, true);
    }

    void Register() override
    {
        OnEffectRemove += AuraEffectRemoveFn(aura_wrathion_incineration::HandleRemove, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL);
    }
};

// 307041 - Gale blast targets
class spell_wrathion_gale_blast_targets : public SpellScript
{
    PrepareSpellScript(spell_wrathion_gale_blast_targets);

    void HandleHitTarget(SpellEffIndex effIndex)
    {
        if (Unit* target = GetHitUnit())
            GetCaster()->CastSpell(target, SPELL_GALE_BLAST_MISSILE, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_wrathion_gale_blast_targets::HandleHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 306735 - Burning Cataclysm
class aura_wrathion_burning_cataclysm : public AuraScript
{
    PrepareAuraScript(aura_wrathion_burning_cataclysm);

    void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Unit* caster = GetCaster())
            caster->CastSpell(nullptr, SPELL_MOLTEN_ERUPTION_VISUAL, false);
    }

    void Register() override
    {
        AfterEffectRemove += AuraEffectRemoveFn(aura_wrathion_burning_cataclysm::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL);
    }
};

// 306949 - Burning Cataclysm
class spell_wrathion_burning_cataclysm_teleport : public SpellScript
{
    PrepareSpellScript(spell_wrathion_burning_cataclysm_teleport);

    void HandleHitTarget(SpellEffIndex effIndex)
    {
        Unit* caster = GetCaster();

        caster->GetScheduler().Schedule(500ms, [](TaskContext context)
        {
            GetContextUnit()->RemoveAurasDueToSpell(SPELL_BURNING_CATACLYSM_TELEPORT_VISUAL);
        });

        caster->StopMoving();
        caster->SetFacingTo(caster->GetAngle(wrathion_room_center));

        if (caster->IsCreature() && caster->IsAIEnabled)
            caster->ToCreature()->AI()->DoAction(SPELL_SCORCHING_BLISTER_MISSILE);

        caster->CastSpell(nullptr, SPELL_BURNING_CATACLYSM, false);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_wrathion_burning_cataclysm_teleport::HandleHitTarget, EFFECT_0, SPELL_EFFECT_TELEPORT_UNITS);
    }
};

// 306788 - Molten Eruption
class spell_wrathion_molten_eruption : public SpellScript
{
    PrepareSpellScript(spell_wrathion_molten_eruption);

    void HandleHitTarget(SpellEffIndex effIndex)
    {
        for (uint8 i = 0; i < 15; ++i)
            GetCaster()->CastSpell(GetRandomRoomPosition(), SPELL_MOLTEN_ERUPTION_MISSILE, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_wrathion_molten_eruption::HandleHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 306995 - Smoke and Mirrors
class aura_wrathion_smoke_and_mirrors : public AuraScript
{
    PrepareAuraScript(aura_wrathion_smoke_and_mirrors);

    void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Unit* caster = GetCaster())
            caster->CastSpell(nullptr, SPELL_SMOKE_AND_MIRRORS_ENDING, false);
    }

    void Register() override
    {
        AfterEffectRemove += AuraEffectRemoveFn(aura_wrathion_smoke_and_mirrors::OnRemove, EFFECT_0, SPELL_AURA_AREA_TRIGGER, AURA_EFFECT_HANDLE_REAL);
    }
};

// 313253 - Creeping Madness targets
class spell_wrathion_creeping_madness_targets : public SpellScript
{
    PrepareSpellScript(spell_wrathion_creeping_madness_targets);

    void FilterTargets(std::list<WorldObject*>& targetsList)
    {
        std::list<WorldObject*> tempTargets;
        for (auto target : targetsList)
            if (Player* playerTarget = target->ToPlayer())
                if (playerTarget->GetRoleForGroup() != ROLE_TANK)
                    tempTargets.push_back(playerTarget);

        Trinity::Containers::RandomResize(tempTargets, 3);

        targetsList = tempTargets;
    }

    void HandleHitTarget(SpellEffIndex effIndex)
    {
        if (Unit* target = GetHitUnit())
            GetCaster()->CastSpell(target, SPELL_CREEPING_MADNESS, true);
    }

    void Register() override
    {
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_wrathion_creeping_madness_targets::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
        OnEffectHitTarget += SpellEffectFn(spell_wrathion_creeping_madness_targets::HandleHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 313250 - Creeping Madness
class aura_wrathion_creeping_madness : public AuraScript
{
    PrepareAuraScript(aura_wrathion_creeping_madness);

    void PeriodicTick(AuraEffect const* /*aurEff*/)
    {
        Unit* target = GetTarget();

        if (target->isMoving())
            target->CastSpell(target, SPELL_CREEPING_MADNESS_SLOW, true);

        if (target->GetAuraCount(SPELL_CREEPING_MADNESS_SLOW) >= 50)
        {
            target->CastSpell(target, SPELL_CREEPING_MADNESS_DAMAGE, true);
            Remove();
        }
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(aura_wrathion_creeping_madness::PeriodicTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
    }
};

// 22681
struct at_wrathion_scorching_blister : public AreaTriggerAI
{
    at_wrathion_scorching_blister(AreaTrigger* at) : AreaTriggerAI(at) {}

    void OnUnitEnter(Unit* unit) override
    {
        if (unit->IsPlayer())
            unit->CastSpell(unit, SPELL_SCORCHING_BLISTER_AT_DAMAGE, true);
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveAurasDueToSpell(SPELL_SCORCHING_BLISTER_AT_DAMAGE);
    }

    void OnRemove() override
    {
        if (Unit* caster = at->GetCaster())
            caster->CastSpell(at->GetPosition(), SPELL_SCORCHING_BLISTER_EXPLOSION, true);
    }
};

// 22188
struct at_wrathion_scales_of_wrathion : public AreaTriggerAI
{
    at_wrathion_scales_of_wrathion(AreaTrigger* at) : AreaTriggerAI(at) {}

    void OnRemove() override
    {
        VALIDATE_CASTER();

        GuidUnorderedSet const& insidePlayers = at->GetInsidePlayers();

        if (insidePlayers.empty())
        {
            caster->CastSpell(at->GetPosition(), SPELL_SCALES_OF_WRATHION_DAMAGE, true);
        }
        else if (Unit* target = ObjectAccessor::GetUnit(*caster, *insidePlayers.begin()))
        {
            for (uint8 i = 0; i < 5; ++i)
                target->CastSpell(target, SPELL_BURNING_MADNESS, true);
        }
    }
};

// 22238
struct at_wrathion_crackling_shard : public AreaTriggerAI
{
    at_wrathion_crackling_shard(AreaTrigger* at) : AreaTriggerAI(at) {}

    void OnUnitEnter(Unit* unit) override
    {
        VALIDATE_CASTER();

        if (Aura* burningMadness = unit->GetAura(SPELL_BURNING_MADNESS))
        {
            unit->Kill(caster);

            burningMadness->RefreshDuration();
            burningMadness->ModStackAmount(-1);
        }
    }
};

// ?
struct at_wrathion_lava_pool : public AreaTriggerAI
{
    at_wrathion_lava_pool(AreaTrigger* at) : AreaTriggerAI(at) {}

    void OnUnitEnter(Unit* unit) override
    {
        VALIDATE_CASTER();

        if (InstanceScript* instance = caster->GetInstanceScript())
            instance->DoCastSpellOnPlayers(SPELL_RISING_HEAT);

        if (unit->IsPlayer())
            unit->CastSpell(unit, SPELL_LAVA_POOL_AT_DAMAGE, true);
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveAurasDueToSpell(SPELL_LAVA_POOL_AT_DAMAGE);
    }
};

void AddSC_wrathion()
{
    RegisterCreatureAI(boss_wrathion);
    RegisterCreatureAI(npc_molten_eruption_stalker);
    RegisterCreatureAI(npc_crackling_shard);
    RegisterCreatureAI(npc_ashwalker_assasin);
    RegisterConversationScript(conversation_wrathion);
    RegisterSpellScript(spell_wrathion_searing_breath_targets);
    RegisterSpellScript(spell_wrathion_incineration_targets);
    RegisterAuraScript(aura_wrathion_incineration);
    RegisterSpellScript(spell_wrathion_gale_blast_targets);
    RegisterAuraScript(aura_wrathion_burning_cataclysm);
    RegisterSpellScript(spell_wrathion_burning_cataclysm_teleport);
    RegisterSpellScript(spell_wrathion_molten_eruption);
    RegisterAuraScript(aura_wrathion_smoke_and_mirrors);
    RegisterSpellScript(spell_wrathion_creeping_madness_targets);
    RegisterAuraScript(aura_wrathion_creeping_madness);
    RegisterAreaTriggerAI(at_wrathion_scorching_blister);
    RegisterAreaTriggerAI(at_wrathion_scales_of_wrathion);
    RegisterAreaTriggerAI(at_wrathion_lava_pool);
}

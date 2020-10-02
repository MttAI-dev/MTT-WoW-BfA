/*
 * Copyright (C) 2020 LatinCoreTeam
 * Copyright (C) Thordekk
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

//Missing scripts

#include "throne_of_thunder.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "ScriptedEscortAI.h"
#include "ScriptedGossip.h"
#include "TemporarySummon.h"
#include "ScriptMgr.h"
#include "GameObject.h"
#include "MotionMaster.h"

enum Yells
{
    /*** Bosses ***/

    // Spirit of Gara'jal (Gara'jal the Spiritbinder)

    SAY_INTRO = 0, // Witness the powa of the Spiritbinder!

    // Kazra'jin

    SAY_KAZ_AGGRO,                   // Dis is gonna hurt!
    SAY_KAZ_KILL,                    // 0 - Da Amani empire cannot be stopped! ; 1 - On ya knees!
    SAY_KAZ_DEATH,                   // Da thunder king... promised...
    SAY_KAZ_POSSESSED,               // Ya shouldn't be messin' wit da Zandalari!

    SAY_RECKLESS_CHARGE,             // 0 - Incoming! ; 1 - Out da way!
    SAY_DISCHARGE,                   // Shocking!

    // Sul the Sandcrawler

    SAY_SUL_AGGRO,                   // Da sands will consume everyting!
    SAY_SUL_KILL,                    // 0 - Da sands are endless. ; 1 - Da first of many!
    SAY_SUL_DEATH,                   // I return... to... da... sands...
    SAY_SUL_POSSESSED,               // I will bury ya all!

    SAY_SANDSTORM,                   // Da storm approaches!
    SAY_QUICKSAND,                   // Watch yer step!
    SAY_TREACHEROUS_GROUND,          // Dey tink dey can stop da Farraki?

    // Frost King Malakk

    SAY_MAL_AGGRO,                   // Ya have met your match, fools!
    SAY_MAL_KILL,                    // 0 - Death's cold embrace. ; 1 - Witness da Drakkari's might.
    SAY_MAL_DEATH,                   // Da... empire... can't... fall...
    SAY_MAL_POSSESSED,               // Winter is coming...

    SAY_FROSTBITE,                   // 0 - Freeze! ; 1 - Getting cold?
    SAY_BODY_HEAT,                   // Da' Drakkari will never fall to de' likes of you!

    // High Priestess Mar'li

    SAY_MAR_AGGRO,                   // Death ta all who appose da empire!
    SAY_MAR_KILL,                    // 0 - She will feast on yer soul! ; 1 - Another offering to da loa!
    SAY_MAR_DEATH,                   // Shadra... save... me...
    SAY_MAR_POSSESSED,               // Da spiritbinder reveals yer soul ta me!

    SAY_LOA_SPIRIT                   // 0 - Yer soul belongs ta me! ; 1 - Succumb ta her venom! ; 2 - Embrace yer demise! ; 3 - Shadra's rage will destroy you!
};

// 138705
// 136423

enum Spells
{
    /*** Bosses ***/

    // Spirit of Gara'jal (Gara'jal the Spiritbinder)

    SPELL_INTRO_VISUAL = 144465, // 137135
    SPELL_WISP_FORM = 90793,

    SPELL_POSSESS = 136442, // Possess councilor spell. Generating Dark Energy, 25% size increase. Periodic dummy effect 1.
    SPELL_LINGERING_PRESENCE = 136467, // Increases damage done by 10%, Dark Energy generation rate by 10%. Cancels Possessed aura - not working. Use by adding aura.

    SPELL_SOUL_FRAGMENT = 137641, // HEROIC only. Mechanic abilities override aura + Shadowed Soul (137650) trigger each 5 seconds. Every second time (Normal) / Every time (25 Heroic) spirit changes possess target.
    SPELL_SOUL_FRAGMENT_PASS = 137643, // On button click to pass SPELL_SOUL_FRAGMENT to another player (trigger spell from target - not working, needs script).

    // Kazra'jin - Mostly no tank needed, casts Reckless Charge all the time.


    SPELL_RECKLESS_CHARGE_FORCE = 137107, // Select target
    SPELL_RECKLESS_CHARGE = 137117, // Cast time and roll visual. 5 sec duration.
    SPELL_RECKLESS_CHARGE_DMG_1 = 137122, // Target reach damage and knockback.
    SPELL_RECKLESS_CHARGE_DMG_2 = 137133, // On players encountered while moving to target.
    SPELL_RECKLESS_CHARGE_DUMMY = 137131, //
    SPELL_RECKLESS_CHARGE_AREA = 138026, // Creates areatrigger to the location where he will charge and on path. 2 sec duration.
    SPELL_RECKLESS_CHARGE_MARK = 146012, // Wrong spell, need to find correct spell

    SPELL_OVERLOAD = 137149, // Dummy duration aura, applies dummy aura on eff 0 for SPELL_OVERLOAD_REFLECT_DMG (40% dmg reflected). Boss should be "stunned" (passive). When Possesed.
    SPELL_OVERLOAD_REFLECT_DMG = 137151, // Damage reflected spell.

    SPELL_DISCHARGE = 137166, // HEROIC only. Replaces Overload. Dummy duration aura, applies dummy aura on eff 0 for SPELL_DISCHARGE_REFLECT_DMG (5% dmg reflected to raid). Boss "stunned" (passive). When Possesed.
    SPELL_DISCHARGE_REFLECT_DMG = 136935, // Damage reflected spell.

    // Sul the Sandcrawler - Mostly no tank needed, casts Sand Bolt all the time.

    SPELL_SAND_BOLT = 136189, // Triggers 136190 damage in 5 yards.

    SPELL_QUICKSAND = 136521, // Cast time + eff 0 triggering of SPELL_ENTRAPPED, stun 8 seconds on target player (who is at location where npc will spawn).
    SPELL_QUICKSAND_VISUAL = 136851, // Visual aura. Dummy aura on effect 0 for SPELL_QUICKSAND_DMG / SPELL_ENSNARED for players entering it.
    SPELL_QUICKSAND_DMG = 136860, // Periodic damage aura on player.
    SPELL_QUICKSAND_SPAWN_EFF = 137759, // Spawn effect made by npc with DoCast.
    SPELL_TREACHEROUS_GROUND_QS = 137629, // HEROIC only. 50% Quicksand increase size, it despawns older Quicksand in radius after spawn and adds this aura (they "merge").

    SPELL_ENSNARED = 136878, // 15% speed decrease each sec for players in Quicksand. On 5 stacks causes SPELL_ENTRAPPED.
    SPELL_ENTRAPPED = 136857, // At 5 stacks or if player is at Quicksand npc location when it spawns. Used with add aura for 30 sec stun.

    SPELL_FORTIFIED = 136864, // Living Sand alive when Sandstorm hits cast this on them, full heal + size + dmg done increase.
    SPELL_TREACHEROUS_GROUND = 137614, // HEROIC only. Living Sand + 125% health and damage done aura if Quicksands combine (if Quicksand has SPELL_TREACHEROUS_GROUND_QS aura when Sandstorm hits).

    SPELL_SANDSTORM = 136894, // Replaces Quicksand. Cast time and periodic damage spell. Despawns Quicksand and creates NPC_LIVING_SAND. Possessed version.
    SPELL_SANDSTORM_VISUAL = 136895, // Boss visual.

    // Frost King Malakk

    SPELL_FRIGID_ASSAULT = 136904, // Aura for 75k frost damage / melee triggered on eff 1, and stack add SPELL_FRIGID_ASSAULT_STACKS on eff 0.
    SPELL_FRIGID_ASSAULT_STACKS = 136903, // Periodic dummy eff 0 for checking stacks. At 15 stacks player stunned by SPELL_FRIGID_ASSAULT_STUN.
    SPELL_FRIGID_ASSAULT_STUN = 136910, // 15 second stun.

    SPELL_BITING_COLD = 136917,
    SPELL_BITING_COLD_AURA = 136992, // 94 k dmg, triggers periodic aura on player.
    //SPELL_BITING_COLD_VISUAL    = 137579, // Visual dummy. Put on player with add aura.

    SPELL_FROSTBITE = 136922, // Replaces Biting Cold. Added in 5 stacks to a player. Damage 22k / stack players in 4 yards, and removes 2 (1 in 25 - player) stacks for each. Can't remove fully. Possessed version.
    SPELL_FROSTBITE_DMG = 136937,
    SPELL_FROSTBITE_VISUAL = 136926,
    SPELL_FROSTBITE_AOE = 137575, // aoe targetting
    SPELL_FROSTBITE_AOE_2 = 136990,
    SPELL_BODY_HEAT = 137084, // HEROIC only. On player in 4 yards when hit by frostbite. Applies SPELL_CHILLED_TO_THE_BONE aura after 8 sec, and player cannot help remove Frostbite.
    SPELL_CHILLED_TO_THE_BONE = 137085, // Prevents players from removing Frostbite stacks for 8 sec.

    // High Priestess Mar'li

    SPELL_WRATH_OF_THE_LOA = 137344, // 133000 to 147000 Holy damage.
    SPELL_BLESSED_LOA_SPIRIT = 137203, // Main fake cast time spell. Eff 0 dummy for SPELL_BLESSED_LOA_SPIRIT_S.
    SPELL_BLESSED_LOA_SPIRIT_S = 137200, // Summons NPC_BLESSED_LOA_SPIRIT.

    SPELL_WRATH_OF_THE_LOA_POSS = 137347, // 152625 to 177375 Shadow damage. Possessed version.
    SPELL_SHADOWED_LOA_SPIRIT = 137350, // Replaces Blessed Loa Spirit. Main fake cast time spell. Eff 0 dummy for SPELL_SHADOWED_LOA_SPIRIT_S. Possessed version.
    SPELL_SHADOWED_LOA_SPIRIT_S = 137351, // Summons NPC_SHADOWED_LOA_SPIRIT. Possessed version.

    SPELL_TWISTED_FATE = 137891, // HEROIC only. Replaces Shadowed Loa Spirit summoning. Cast time and eff 0 spell trigger (for SPELL_TWISTED_FATE_S_1). Possessed version.
    SPELL_TWISTED_FATE_S_1 = 137893, // Summons NPC_TWISTED_FATE_1.
    SPELL_TWISTED_FATE_S_2 = 137963, // Summons NPC_TWISTED_FATE_2.
    SPELL_TWISTED_FATE_VISUAL = 137967, // Visual between the two npc's. Dummy eff 0 (maybe for checking distance between them).
    SPELL_TWISTED_FATE_DMG_A = 137986, // Damage aura on each mob, triggers SPELL_TWISTED_FATE_DMG to the whole raid every 3 sec.
    SPELL_TWISTED_FATE_DMG = 137972, // Calculation is done according to distance between npc's (further = less dmg to raid). If one dies, 100k dmg / 3 sec to all raid by remaning one.

    SPELL_BLESSED_GIFT = 137303, // Blessed Loa Spirit heal on councilor 5% hp.
    SPELL_SHADOWED_GIFT = 137390, // Shadowed Loa Spirit 10 mil damage in 6 yards.
    SPELL_SHADOWED_GIFT_2 = 137407, // with 400 yards
    SPELL_MARKED_SOUL = 137359, // Fixated spell for Shadowed Loa Spirit aura. Pet control (used with add aura).

    SPELL_TWISTED_FATE_CLONE_1 = 137950, // Player target cast on NPC_TWISTED_FATE_1 when it spawns.
    SPELL_TWISTED_FATE_CLONE_2 = 137965,  // Player target cast on NPC_TWISTED_FATE_2 when it spawns.

    // General / Misc

    SPELL_DARK_POWER = 136507, // At 100 Dark Energy, raid damage and increase.
    SPELL_ZERO_POWER = 72242,  // No Regen
    SPELL_BERSERK = 144369, // Berserk, Enrage, Bye - Bye or, simply put, a wipe. :)
};

enum Events
{
    /*** Bosses ***/

    // Spirit of Gara'jal (Gara'jal the Spiritbinder)

    EVENT_KAZRAJIN_SAY_AGRRO = 1,
    EVENT_SUL_SAY_AGRRO,
    EVENT_MALAKK_SAY_AGRRO,
    EVENT_MARLI_SAY_AGRRO,

    EVENT_POSSESS_NEXT,                   // When current possess target health dropped by 25%.

    // Kazra'jin

    EVENT_RECKLESS_CHARGE,
    EVENT_RECKLESS_CHARGE_BEGIN,
    EVENT_RECKLESS_CHARGE_MOVE,

    EVENT_OVERLOAD_DISCHARGE,             // Discharge is HEROIC only.
    EVENT_R_OVERLOAD_DISCHARGE,

    // Sul the Sandcrawler

    EVENT_SAND_BOLT,
    EVENT_QUICKSAND,

    // Frost King Malakk

    EVENT_FRIGID_ASSAULT,
    EVENT_BITING_COLD_FROSTBITE,

    // High Priestess Mar'li

    EVENT_WRATH_OF_THE_LOA,
    EVENT_BS_LOA_SPIRIT_FATE,             // Twisted Fate is HEROIC only.               

    // General / Misc

    EVENT_DARK_POWER,
    EVENT_BERSERK,

    /*** Adds ***/

    EVENT_ENSNARE_ENTRAPPED,
    EVENT_CHECK_TREACH_GROUND,
    EVENT_LOA_SPIRIT_JUMP_KILL
};

enum Timers
{
    /*** Bosses ***/

    // Spirit of Gara'jal (Gara'jal the Spiritbinder)

    TIMER_KAZRAJIN_SAY_AGRRO = 4000,
    TIMER_SUL_SAY_AGRRO = 4000,
    TIMER_MALAKK_SAY_AGRRO = 4000,
    TIMER_MARLI_SAY_AGRRO = 4000,

    TIMER_POSSESS_NEXT = 1000,

    // Kazra'jin

    TIMER_RECKLESS_CHARGE_F = 10000,
    TIMER_RECKLESS_CHARGE_S = 6000,

    TIMER_RECKLESS_CHARGE_MOVE = 1100,
    TIMER_SUMM_R_CHARGE_VIS = 250,

    TIMER_OVERLOAD_DISCHARGE = 1000,
    TIMER_R_OVERLOAD_DISCHARGE = 20100,

    // Sul the Sandcrawler

    TIMER_SAND_BOLT = 2500,

    TIMER_QUICKSAND_F = 8000,
    TIMER_QUICKSAND_S = 35000,

    // Frost King Malakk

    TIMER_FRIGID_ASSAULT = 30000,

    TIMER_BITING_COLD_F = 13000,
    TIMER_BITING_COLD_S = 45000,

    // High Priestess Mar'li

    TIMER_WRATH_OF_THE_LOA = 2000,

    TIMER_LOA_SPIRIT_F = 25000,
    TIMER_LOA_SPIRIT_S = 34000,

    // General / Misc

    TIMER_DARK_POWER = 1000,
    TIMER_BERSERK = 720000, // 12 minutes.

    /*** Adds ***/

    TIMER_ENSNARE_ENTRAPPED = 1000,
    TIMER_CHECK_TREACH_GROUND = 500,
    TIMER_LOA_SPIRIT_JUMP_KILL = 20000
};

enum Actions
{
    ACTION_POSSESS_NEXT = 1,
    ACTION_BOSS_DIED,
    ACTION_SUMMON_LIVING_SAND,
    ACTION_RECKLESS_CHARGE,
    ACTION_RECKLESS_CHARGE_MOVE,
};

enum Npcs
{
    NPC_SPIRIT_OF_GARAJAL = 69135,

    NPC_RECKLESS_CHARGE = 69453, // Boss summons this and charges towards it.

    NPC_SHADOWED_LOA_SPIRIT = 69548, // Fixates to random player and moves to him. If within 6 yards jump and kills him.
    NPC_TWISTED_FATE_1 = 69740, // Twisted Fate npc 1.
    NPC_TWISTED_FATE_2 = 69746  // Twisted Fate npc 2.
};

const Position bossesPos[4] =
{
    {6064.94f, 5375.51f, 136.089f, 2.19309f},    // Sul
    {6040.6f, 5370.47f, 136.089f, 1.475329f},    // Malakk
    {6027.79f, 5375.08f, 136.089f, 1.105759f},   // Mar'li
    {6053.38f, 5370.28f, 136.089f, 1.88469f}     // Kazra'jin
};

/*** Spirit of Gara'jal ***/

// Gara'jal the Spiritbender 69135 - Acts as controller!
class boss_spirit_of_gara_jal_council : public CreatureScript
{
public:
    boss_spirit_of_gara_jal_council() : CreatureScript("boss_spirit_of_gara_jal_council") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_spirit_of_gara_jal_councilAI(creature);
    }

    struct boss_spirit_of_gara_jal_councilAI : public BossAI
    {
        boss_spirit_of_gara_jal_councilAI(Creature* creature) : BossAI(creature, DATA_COUNCIL_OF_ELDERS)
        {
            me->setActive(true);

            memset(possesedBosses, 0, sizeof(possesedBosses));
        }

        uint8 possessedCount;
        uint8 bossesKilled;

        void Reset()
        {
            _Reset();

            me->AddAura(SPELL_INTRO_VISUAL, me);
            me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));

            InitBosses();

            

            possesedBosses[0] = DATA_FROST_KING_MALAKK;
            possesedBosses[1] = DATA_HIGH_PRIESTESS_MARLI;
            possesedBosses[2] = DATA_KAZRAJIN;
            possesedBosses[3] = DATA_SUL_THE_SANDCRAWLER;

            possessedCount = 0;
            bossesKilled = 0;

            me->SetReactState(REACT_AGGRESSIVE);
        }

        void EnterCombat(Unit* who)
        {
            Talk(SAY_INTRO);

            StartBosses();

            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));

            me->SetReactState(REACT_PASSIVE);

            DoCast(me, SPELL_WISP_FORM);

            events.ScheduleEvent(EVENT_KAZRAJIN_SAY_AGRRO, TIMER_KAZRAJIN_SAY_AGRRO);
            events.ScheduleEvent(EVENT_SUL_SAY_AGRRO, TIMER_SUL_SAY_AGRRO);
            events.ScheduleEvent(EVENT_MALAKK_SAY_AGRRO, TIMER_MALAKK_SAY_AGRRO);
            events.ScheduleEvent(EVENT_MARLI_SAY_AGRRO, TIMER_MARLI_SAY_AGRRO);

            events.ScheduleEvent(EVENT_POSSESS_NEXT, TIMER_POSSESS_NEXT);

            instance->SetBossState(DATA_COUNCIL_OF_ELDERS, IN_PROGRESS);
            DoZoneInCombat();
        }

        void JustDied(Unit* killer)
        {
            _JustDied();

            //DespawnCreaturesInArea(NPC_LIVING_SAND, me);

            me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_IMMUNE_TO_PC));
        }

        void DoAction(int32 const action)
        {
            switch (action)
            {
            case ACTION_POSSESS_NEXT:
                events.ScheduleEvent(EVENT_POSSESS_NEXT, TIMER_POSSESS_NEXT);
                break;

            default: break;
            }
        };

        void UpdateAI(uint32 const diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_POSSESS_NEXT:
                {
                    if (Creature* pBoss = SelectBossToPosses())
                    {
                        me->GetMotionMaster()->MovementExpired();
                        me->GetMotionMaster()->MoveFollow(pBoss, 2.0f, 0.0f);
                        DoCast(pBoss, SPELL_POSSESS);
                    }
                    else
                    {
                        // die if cannot select boss
                        EndEncounter();
                    }
                    break;
                }

                default: break;
                }
            }
        }

    private:

        uint32 possesedBosses[4];

    private:

        void EndEncounter()
        {
            if (Creature* pKazrajin = GetBoss(DATA_KAZRAJIN))
            {
                pKazrajin->Kill(pKazrajin);
            }

            if (Creature* pSul = GetBoss(DATA_SUL_THE_SANDCRAWLER))
            {
                pSul->Kill(pSul);
            }

            if (Creature* pMalakk = GetBoss(DATA_FROST_KING_MALAKK))
            {
                pMalakk->Kill(pMalakk);
            }

            if (Creature* pMarli = GetBoss(DATA_HIGH_PRIESTESS_MARLI))
            {
                pMarli->Kill(pMarli);
            }

            if (Unit* victim = me->GetVictim())
            {
                me->LowerPlayerDamageReq(me->GetMaxHealth());
                victim->DealDamage(me, 1000);
                victim->Kill(me);
            }
        }

        Creature* GetBoss(uint32 type)
        {
            switch (type)
            {
            case DATA_KAZRAJIN:
            case DATA_SUL_THE_SANDCRAWLER:
            case DATA_HIGH_PRIESTESS_MARLI:
            case DATA_FROST_KING_MALAKK:
                return ObjectAccessor::GetCreature(*me, instance->GetGuidData(type));
            }
            return NULL;
        }

        void InitBosses()
        {
            if (Creature* pKazrajin = GetBoss(DATA_KAZRAJIN))
            {
                pKazrajin->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));
                if (pKazrajin->isDead())
                    pKazrajin->Respawn();
            }

            if (Creature* pSul = GetBoss(DATA_SUL_THE_SANDCRAWLER))
            {
                pSul->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));
                if (pSul->isDead())
                    pSul->Respawn();
            }

            if (Creature* pMalakk = GetBoss(DATA_FROST_KING_MALAKK))
            {
                pMalakk->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));
                if (pMalakk->isDead())
                    pMalakk->Respawn();
            }

            if (Creature* pMarli = GetBoss(DATA_HIGH_PRIESTESS_MARLI))
            {
                pMarli->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));
                if (pMarli->isDead())
                    pMarli->Respawn();
            }
        }

        void StartBosses()
        {
            if (Creature* pKazrajin = GetBoss(DATA_KAZRAJIN))
            {
                pKazrajin->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));
                pKazrajin->AI()->DoZoneInCombat(pKazrajin, 200.0f);
            }

            if (Creature* pSul = GetBoss(DATA_SUL_THE_SANDCRAWLER))
            {
                pSul->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));
                pSul->AI()->DoZoneInCombat(pSul, 200.0f);
            }

            if (Creature* pMalakk = GetBoss(DATA_FROST_KING_MALAKK))
            {
                pMalakk->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));
                pMalakk->AI()->DoZoneInCombat(pMalakk, 200.0f);
            }

            if (Creature* pMarli = GetBoss(DATA_HIGH_PRIESTESS_MARLI))
            {
                pMarli->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));
                pMarli->AI()->DoZoneInCombat(pMarli, 200.0f);
            }
        }

        Creature* SelectBossToPosses()
        {
            // possesedBosses: 0 - malakk, 1 - marli, 2 - kazrajin, 3 - sul

            for (uint8 i = 0; i < 4; ++i)
            {
                if (possesedBosses[i])
                {
                    Creature* pBoss = GetBoss(possesedBosses[i]);
                    if (!pBoss || pBoss->isDead())
                        continue;

                    possesedBosses[i] = 0;

                    return pBoss;
                }
            }

            std::list<Creature*> bosses;

            Creature* pMalakk = GetBoss(DATA_FROST_KING_MALAKK);
            if (pMalakk && !pMalakk->isDead())
                bosses.push_back(pMalakk);

            Creature* pMarli = GetBoss(DATA_HIGH_PRIESTESS_MARLI);
            if (pMarli && !pMarli->isDead())
                bosses.push_back(pMarli);

            Creature* pKazrajin = GetBoss(DATA_KAZRAJIN);
            if (pKazrajin && !pKazrajin->isDead())
                bosses.push_back(pKazrajin);

            Creature* pSul = GetBoss(DATA_SUL_THE_SANDCRAWLER);
            if (pSul && !pSul->isDead())
                bosses.push_back(pSul);

            // cannot happen
            if (bosses.empty())
                return NULL;

            return bosses.front();
        }
    };
};

typedef boss_spirit_of_gara_jal_council::boss_spirit_of_gara_jal_councilAI GarajalAI;

/*** Elders ***/

// Kazra'jin 69134
class boss_kazra_jin : public CreatureScript
{
public:
    boss_kazra_jin() : CreatureScript("boss_kazra_jin") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_kazra_jinAI(creature);
    }

    struct boss_kazra_jinAI : public ScriptedAI
    {
        boss_kazra_jinAI(Creature* creature) : ScriptedAI(creature), summons(me)
        {
            me->setActive(true);

            pInstance = me->GetInstanceScript();
        }

        void Reset()
        {
            events.Reset();
            summons.DespawnAll();

            me->SetPowerType(POWER_ENERGY);
            me->SetMaxPower(POWER_ENERGY, 100);
            DoCast(me, SPELL_ZERO_POWER);
            me->SetPower(POWER_ENERGY, 0);
            me->RemoveUnitFlag(UnitFlags(UNIT_FLAG2_REGENERATE_POWER));
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_RECKLESS_CHARGE, TIMER_RECKLESS_CHARGE_F);

            events.ScheduleEvent(EVENT_BERSERK, TIMER_BERSERK);

            if (pInstance)
                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void KilledUnit(Unit* victim)
        {
            if (victim->GetTypeId() == TYPEID_PLAYER)
                Talk(SAY_KAZ_KILL);
        }

        void JustDied(Unit* killer)
        {
            Talk(SAY_KAZ_DEATH);

            summons.DespawnAll();

            if (pInstance)
            {
                if (Creature* Garajal = ObjectAccessor::GetCreature(*me, pInstance->GetGuidData(DATA_GARAZHAL_THE_SPIRITBINDER)))
                {
                    Garajal->AI()->DoAction(ACTION_BOSS_DIED);
                    if (possesed)
                        Garajal->AI()->DoAction(ACTION_POSSESS_NEXT);
                }

                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            }
        }
        // Check damage taken and remove Possessed aura.
            void DamageTaken(Unit* /*attacker*/, uint32& damage) override
        {
            if (me->HasAura(SPELL_POSSESS))
            {
             if (me->HasAura(SPELL_DISCHARGE))
                {
                    Map::PlayerList const &PlayerList = me->GetMap()->GetPlayers();
                    if (!PlayerList.isEmpty())
                        for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                            if (Player* player = i->GetSource())
                                me->DealDamage(player, 20, NULL, SPELL_DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NATURE);
                }
            }
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_RECKLESS_CHARGE)
            {
                events.ScheduleEvent(EVENT_RECKLESS_CHARGE_BEGIN, 2000);
            }
            else if (action == ACTION_RECKLESS_CHARGE_MOVE)
            {
                summons.DespawnEntry(WORLD_TRIGGER);
            }
        }

        void MovementInform(uint32 type, uint32 data)
        {
            if (type == POINT_MOTION_TYPE)
            {
                if (data == EVENT_CHARGE)
                {
                    events.CancelEvent(EVENT_RECKLESS_CHARGE_MOVE);
                    me->RemoveAura(SPELL_RECKLESS_CHARGE);
                    DoCastAOE(SPELL_RECKLESS_CHARGE_DMG_1);

                    if (me->HasAura(SPELL_POSSESS))
                    {
                        Talk(SAY_DISCHARGE);
                        me->SetReactState(REACT_PASSIVE);
                        if (me->GetMap()->IsHeroic())
                            DoCast(me, SPELL_DISCHARGE, true);
                        else
                            DoCast(me, SPELL_OVERLOAD, true);
                    }
                }
            }
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);
        }

        void SummonedCreatureDespawn(Creature* summon)
        {
            summons.Despawn(summon);
        }

        void UpdateAI(uint32 const diff)
        {
            if (!UpdateVictim())
                return;

            if (me->GetPower(POWER_ENERGY) == 100 && !darkPowerScheduled && !me->HasAura(SPELL_RECKLESS_CHARGE))
            {
                events.ScheduleEvent(EVENT_DARK_POWER, TIMER_DARK_POWER);
                darkPowerScheduled = true;
            }

            if (possesed)
            {
                if (possesedDamagePct - me->GetHealthPct() >= 25.0f)
                {
                    possesed = false;

                    me->RemoveAura(SPELL_POSSESS);
                    me->SetPower(POWER_ENERGY, 0);
                    me->AddAura(SPELL_LINGERING_PRESENCE, me);

                    if (Creature* pGarazhal = ObjectAccessor::GetCreature(*me, pInstance->GetGuidData(DATA_GARAZHAL_THE_SPIRITBINDER)))
                        pGarazhal->AI()->DoAction(ACTION_POSSESS_NEXT);

                    return;
                }
            }

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_RECKLESS_CHARGE:
                    DoCastAOE(SPELL_RECKLESS_CHARGE_FORCE);
                    events.ScheduleEvent(EVENT_RECKLESS_CHARGE, 8000);
                    break;
                case EVENT_RECKLESS_CHARGE_BEGIN:
                    if (firstRecklessCharge)
                    {
                        firstRecklessCharge = false;
                        Talk(SAY_RECKLESS_CHARGE);
                    }
                    DoCast(SPELL_RECKLESS_CHARGE);
                    break;
                case EVENT_RECKLESS_CHARGE_MOVE:
                {
                    bool canSpawnTrigger = true;
                    /*std::list<AreaTrigger*> triggers;
                    me->GetAreaTriggerList(triggers, SPELL_RECKLESS_CHARGE_AREA);
                    for (std::list<AreaTrigger*>::const_iterator itr = triggers.begin(); itr != triggers.end(); ++itr)
                    {
                        if ((*itr)->GetExactDist(me) <= 4.0f)
                        {
                            canSpawnTrigger = false;
                            break;
                        }
                    }*/

                    if (canSpawnTrigger)
                        me->CastSpell(me, SPELL_RECKLESS_CHARGE_AREA, true);

                    events.ScheduleEvent(EVENT_RECKLESS_CHARGE_MOVE, 100);
                    break;
                }
                case EVENT_OVERLOAD_DISCHARGE:
                    if (me->HasAura(SPELL_POSSESS))
                    {
                        Talk(SAY_DISCHARGE);
                        me->SetReactState(REACT_PASSIVE);
                        if (me->GetMap()->IsHeroic())
                            DoCast(me, SPELL_DISCHARGE);
                        else
                            DoCast(me, SPELL_OVERLOAD);

                        events.ScheduleEvent(EVENT_R_OVERLOAD_DISCHARGE, TIMER_R_OVERLOAD_DISCHARGE);
                    }
                    else
                        events.ScheduleEvent(EVENT_RECKLESS_CHARGE, TIMER_RECKLESS_CHARGE_S);
                    break;

                case EVENT_R_OVERLOAD_DISCHARGE:
                    me->RemoveAurasDueToSpell(me->GetMap()->IsHeroic() ? SPELL_DISCHARGE : SPELL_OVERLOAD);
                    me->SetReactState(REACT_AGGRESSIVE);
                    events.ScheduleEvent(EVENT_RECKLESS_CHARGE, TIMER_RECKLESS_CHARGE_S);
                    break;

                case EVENT_DARK_POWER:
                    DoCast(me, SPELL_DARK_POWER);
                    if (me->GetPower(POWER_ENERGY) == 100)
                        events.ScheduleEvent(EVENT_DARK_POWER, TIMER_DARK_POWER);
                    else
                        darkPowerScheduled = false;
                    break;

                case EVENT_BERSERK:
                    DoCast(me, SPELL_BERSERK);
                    break;

                default: break;
                }
            }
        }

    private:

        InstanceScript* pInstance;
        bool possesed;
        uint32 possesedDamagePct;
        bool darkPowerScheduled;
        bool firstRecklessCharge;
        SummonList summons;

        Creature* GetBoss(uint32 type)
        {
            if (pInstance)
            {
                switch (type)
                {
                case DATA_KAZRAJIN:
                case DATA_SUL_THE_SANDCRAWLER:
                case DATA_HIGH_PRIESTESS_MARLI:
                case DATA_FROST_KING_MALAKK:
                    return pInstance->GetCreature(pInstance->GetData(type));
                }
            }
            return NULL;
        }

        bool IsAllBossesDied()
        {
            if (Creature* pBoss = GetBoss(DATA_KAZRAJIN))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_SUL_THE_SANDCRAWLER))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_FROST_KING_MALAKK))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_HIGH_PRIESTESS_MARLI))
                if (pBoss->IsAlive())
                    return false;

            return true;
        }
    };
};

// Sul the Sandcrawler 69078
class boss_sul_the_sandcrawler : public CreatureScript
{
public:
    boss_sul_the_sandcrawler() : CreatureScript("boss_sul_the_sandcrawler") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_sul_the_sandcrawlerAI(creature);
    }

    struct boss_sul_the_sandcrawlerAI : public ScriptedAI
    {
        boss_sul_the_sandcrawlerAI(Creature* creature) : ScriptedAI(creature), vehicle(creature->GetVehicleKit())
        {
            me->setActive(true);

            //ASSERT(vehicle);

            pInstance = me->GetInstanceScript();
        }

        void Reset()
        {
            events.Reset();
            summons.DespawnAll();

            me->AddAura(SPELL_ZERO_POWER, me);
            me->SetPowerType(POWER_ENERGY);
            me->SetMaxPower(POWER_ENERGY, 100);
            me->SetPower(POWER_ENERGY, 0);
            me->RemoveUnitFlag(UnitFlags(UNIT_FLAG2_REGENERATE_POWER));

            possesed = false;
            possesedDamagePct = 0.f;
            darkPowerScheduled = false;
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_SAND_BOLT, TIMER_SAND_BOLT);
            events.ScheduleEvent(EVENT_QUICKSAND, TIMER_QUICKSAND_F);

            events.ScheduleEvent(EVENT_BERSERK, TIMER_BERSERK);

            if (pInstance)
                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            if (pInstance)
                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

            ScriptedAI::EnterEvadeMode();
        }

        void KilledUnit(Unit* victim)
        {
            if (victim->GetTypeId() == TYPEID_PLAYER)
                Talk(SAY_SUL_KILL);
        }

        void JustDied(Unit* killer)
        {
            Talk(SAY_SUL_DEATH);

            summons.DespawnAll();

            if (pInstance)
            {
                if (Creature* Garajal = ObjectAccessor::GetCreature(*me, pInstance->GetGuidData(DATA_GARAZHAL_THE_SPIRITBINDER)))
                {
                    Garajal->AI()->DoAction(ACTION_BOSS_DIED);
                    if (possesed)
                        Garajal->AI()->DoAction(ACTION_POSSESS_NEXT);
                }

                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            }

            possesed = false;
        }

        // Reset damage taken while Possessed.
        void SpellHit(Unit* caster, SpellInfo const* spell)
        {
            if (spell->Id == SPELL_POSSESS)
            {
                Talk(SAY_SUL_POSSESSED);
                possesed = true;
                possesedDamagePct = me->GetHealthPct();
            }
        }

        void JustSummoned(Creature* summon)
        {
            if (me->IsInCombat())
                DoZoneInCombat(summon);

            summons.Summon(summon);
        }

        void SummonedCreaturDespawn(Creature* summon)
        {
            summons.Despawn(summon);
        }

        void UpdateAI(uint32 const diff)
        {
            if (!UpdateVictim())
                return;

            if (me->GetPower(POWER_ENERGY) == 100 && !darkPowerScheduled)
            {
                events.ScheduleEvent(EVENT_DARK_POWER, TIMER_DARK_POWER);
                darkPowerScheduled = true;
            }

            if (possesed)
            {
                if (possesedDamagePct - me->GetHealthPct() >= 25.0f)
                {
                    possesed = false;

                    me->RemoveAura(SPELL_POSSESS);
                    me->SetPower(POWER_ENERGY, 0);
                    me->AddAura(SPELL_LINGERING_PRESENCE, me);

                    if (Creature* pGarazhal = ObjectAccessor::GetCreature(*me, pInstance->GetGuidData(DATA_GARAZHAL_THE_SPIRITBINDER)))
                        pGarazhal->AI()->DoAction(ACTION_POSSESS_NEXT);

                    return;
                }
            }

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_SAND_BOLT:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                        DoCast(target, SPELL_SAND_BOLT);
                    events.ScheduleEvent(EVENT_SAND_BOLT, TIMER_SAND_BOLT);
                    break;

                case EVENT_QUICKSAND:
                    if (me->HasAura(SPELL_POSSESS))
                    {
                        Talk(SAY_SANDSTORM);

                        std::list<Creature*> sandsList;
                        GetCreatureListWithEntryInGrid(sandsList, me, NPC_LIVING_SAND, 200.0f); // TODO: adjuste searche range
                        if (!sandsList.empty())
                            for (std::list<Creature*>::iterator sand = sandsList.begin(); sand != sandsList.end(); sand++)
                                (*sand)->AI()->DoAction(ACTION_SUMMON_LIVING_SAND);

                        std::list<Creature*> livingList;
                        GetCreatureListWithEntryInGrid(livingList, me, NPC_LIVING_SAND, 200.0f); // TODO: adjuste searche range
                        if (!livingList.empty())
                            for (std::list<Creature*>::iterator living = livingList.begin(); living != livingList.end(); living++)
                                (*living)->AddAura(SPELL_FORTIFIED, *living);

                        DoCast(me, SPELL_SANDSTORM);
                        me->AddAura(SPELL_SANDSTORM_VISUAL, me);
                    }
                    else
                    {
                        Talk(SAY_QUICKSAND);

                        DoCastAOE(SPELL_QUICKSAND);
                    }
                    events.ScheduleEvent(EVENT_QUICKSAND, TIMER_QUICKSAND_S);
                    break;

                case EVENT_DARK_POWER:
                    DoCast(me, SPELL_DARK_POWER);
                    if (me->GetPower(POWER_ENERGY) == 100)
                        events.ScheduleEvent(EVENT_DARK_POWER, TIMER_DARK_POWER);
                    else
                        darkPowerScheduled = false;
                    break;

                case EVENT_BERSERK:
                    DoCast(me, SPELL_BERSERK);
                    break;

                default: break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:

        Vehicle* vehicle;
        InstanceScript* pInstance;
        bool possesed;
        float possesedDamagePct;
        bool darkPowerScheduled;

        Creature* GetBoss(uint32 type)
        {
            if (pInstance)
            {
                switch (type)
                {
                case DATA_KAZRAJIN:
                case DATA_SUL_THE_SANDCRAWLER:
                case DATA_HIGH_PRIESTESS_MARLI:
                case DATA_FROST_KING_MALAKK:
                    return pInstance->GetCreature(pInstance->GetData(type));
                }
            }
            return NULL;
        }

        bool IsAllBossesDied()
        {
            if (Creature* pBoss = GetBoss(DATA_KAZRAJIN))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_SUL_THE_SANDCRAWLER))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_FROST_KING_MALAKK))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_HIGH_PRIESTESS_MARLI))
                if (pBoss->IsAlive())
                    return false;
        }
    };


};

// Frost King Malakk 69131
class boss_frost_king_malakk : public CreatureScript
{
public:
    boss_frost_king_malakk() : CreatureScript("boss_frost_king_malakk") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_frost_king_malakkAI(creature);
    }

    struct boss_frost_king_malakkAI : public ScriptedAI
    {
        boss_frost_king_malakkAI(Creature* creature) : ScriptedAI(creature), vehicle(creature->GetVehicleKit())
        {
            me->setActive(true);

            pInstance = me->GetInstanceScript();
        }

        void Reset()
        {
            events.Reset();
            summons.DespawnAll();

            me->SetPowerType(POWER_ENERGY);
            me->SetMaxPower(POWER_ENERGY, 100);
            DoCast(me, SPELL_ZERO_POWER);
            me->SetPower(POWER_ENERGY, 0);
            me->RemoveUnitFlag(UnitFlags(UNIT_FLAG2_REGENERATE_POWER));

            possesed = false;
            possesedDamagePct = 0.f;
            darkPowerScheduled = false;
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_FRIGID_ASSAULT, TIMER_FRIGID_ASSAULT);
            events.ScheduleEvent(EVENT_BITING_COLD_FROSTBITE, TIMER_BITING_COLD_F);

            events.ScheduleEvent(EVENT_BERSERK, TIMER_BERSERK);

            if (pInstance)
                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void KilledUnit(Unit* victim)
        {
            if (victim->GetTypeId() == TYPEID_PLAYER)
                Talk(SAY_MAL_KILL);
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            if (pInstance)
                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

            ScriptedAI::EnterEvadeMode();
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);
            summon->setActive(true);

            if (me->IsInCombat())
                summon->SetInCombatWithZone();
        }

        void JustDied(Unit* killer)
        {
            Talk(SAY_MAL_DEATH);
            summons.DespawnAll();

            if (pInstance)
            {
                if (Creature* Garajal = ObjectAccessor::GetCreature(*me, pInstance->GetGuidData(DATA_GARAZHAL_THE_SPIRITBINDER)))
                {
                    Garajal->AI()->DoAction(ACTION_BOSS_DIED);
                    if (possesed)
                        Garajal->AI()->DoAction(ACTION_POSSESS_NEXT);
                }

                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            }
            possesed = false;
        }

        // Reset damage taken while Possessed.
        void SpellHit(Unit* caster, SpellInfo const* spell)
        {
            if (spell->Id == SPELL_POSSESS)
            {
                Talk(SAY_MAL_POSSESSED);
                possesedDamagePct = me->GetHealthPct();
                possesed = true;
            }
        }

        void UpdateAI(uint32 const diff)
        {
            if (!UpdateVictim())
                return;

            if (me->GetPower(POWER_ENERGY) == 100 && !darkPowerScheduled)
            {
                events.ScheduleEvent(EVENT_DARK_POWER, TIMER_DARK_POWER);
                darkPowerScheduled = true;
            }

            if (possesed)
            {
                if (possesedDamagePct - me->GetHealthPct() >= 25.0f)
                {
                    possesed = false;

                    me->RemoveAura(SPELL_POSSESS);
                    me->SetPower(POWER_ENERGY, 0);
                    me->AddAura(SPELL_LINGERING_PRESENCE, me);

                    if (Creature* pGarazhal = ObjectAccessor::GetCreature(*me, pInstance->GetGuidData(DATA_GARAZHAL_THE_SPIRITBINDER)))
                        pGarazhal->AI()->DoAction(ACTION_POSSESS_NEXT);

                    return;
                }
            }

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_FRIGID_ASSAULT:
                    DoCast(me, SPELL_FRIGID_ASSAULT);
                    events.ScheduleEvent(EVENT_FRIGID_ASSAULT, TIMER_FRIGID_ASSAULT);
                    break;

                case EVENT_BITING_COLD_FROSTBITE:
                    Talk(SAY_FROSTBITE);
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                    {
                        //me->AddAura(SPELL_BITING_COLD_VISUAL, target);
                        if (me->HasAura(SPELL_POSSESS))
                        {
                            DoCastAOE(SPELL_FROSTBITE_AOE, true);
                            DoCastAOE(SPELL_FROSTBITE_AOE_2);
                        }
                        else
                        {
                            DoCastAOE(SPELL_BITING_COLD);
                        }
                    }
                    events.ScheduleEvent(EVENT_BITING_COLD_FROSTBITE, TIMER_BITING_COLD_F);
                    break;

                case EVENT_DARK_POWER:
                    DoCast(me, SPELL_DARK_POWER);
                    if (me->GetPower(POWER_ENERGY) == 100)
                        events.ScheduleEvent(EVENT_DARK_POWER, TIMER_DARK_POWER);
                    else
                        darkPowerScheduled = false;
                    break;

                case EVENT_BERSERK:
                    DoCast(me, SPELL_BERSERK);
                    break;

                default: break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:

        Vehicle* vehicle;
        InstanceScript* pInstance;
        bool possesed;
        float possesedDamagePct;
        bool darkPowerScheduled;

        Creature* GetBoss(uint32 type)
        {
            if (pInstance)
            {
                switch (type)
                {
                case DATA_KAZRAJIN:
                case DATA_SUL_THE_SANDCRAWLER:
                case DATA_HIGH_PRIESTESS_MARLI:
                case DATA_FROST_KING_MALAKK:
                    return pInstance->instance->GetCreature(pInstance->GetGuidData(type));
                }
            }
            return NULL;
        }

        bool IsAllBossesDied()
        {
            if (Creature* pBoss = GetBoss(DATA_KAZRAJIN))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_SUL_THE_SANDCRAWLER))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_FROST_KING_MALAKK))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_HIGH_PRIESTESS_MARLI))
                if (pBoss->IsAlive())
                    return false;

            return true;
        }
    };
};

// High Priestess Mar'li 69132
class boss_high_priestess_mar_li : public CreatureScript
{
public:
    boss_high_priestess_mar_li() : CreatureScript("boss_high_priestess_mar_li") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_high_priestess_mar_liAI(creature);
    }

    struct boss_high_priestess_mar_liAI : public ScriptedAI
    {
        boss_high_priestess_mar_liAI(Creature* creature) : ScriptedAI(creature), vehicle(creature->GetVehicleKit())
        {
            me->setActive(true);

            pInstance = me->GetInstanceScript();
        }

        void Reset()
        {
            events.Reset();
            summons.DespawnAll();

            me->SetPowerType(POWER_ENERGY);
            me->SetMaxPower(POWER_ENERGY, 100);
            DoCast(me, SPELL_ZERO_POWER);
            me->SetPower(POWER_ENERGY, 0);
            me->RemoveUnitFlag(UnitFlags(UNIT_FLAG2_REGENERATE_POWER));

            possesed = false;
            possesedDamagePct = 0.f;
            darkPowerScheduled = false;

            if (pInstance)
                pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_MARKED_SOUL);
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_WRATH_OF_THE_LOA, 100);
            events.ScheduleEvent(EVENT_BS_LOA_SPIRIT_FATE, TIMER_LOA_SPIRIT_F);
            events.ScheduleEvent(EVENT_BERSERK, TIMER_BERSERK);

            if (pInstance)
                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void KilledUnit(Unit* victim)
        {
            if (victim->GetTypeId() == TYPEID_PLAYER)
                Talk(SAY_MAR_KILL);
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            if (pInstance)
                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me); // Remove

            ScriptedAI::EnterEvadeMode();
        }

        void JustSummoned(Creature* summon)
        {
            if (me->IsInCombat())
            {
                DoZoneInCombat(summon);
            }

            summons.Summon(summon);
        }

        void SummonedCreatureDespawn(Creature* summon)
        {
            summons.Despawn(summon);
        }

        void JustDied(Unit* killer)
        {
            Talk(SAY_MAR_DEATH);
            summons.DespawnAll();

            // Check event state.
            if (pInstance)
            {
                if (Creature* Garajal = ObjectAccessor::GetCreature(*me, pInstance->GetGuidData(DATA_GARAZHAL_THE_SPIRITBINDER)))
                {
                    Garajal->AI()->DoAction(ACTION_BOSS_DIED);
                    if (possesed)
                        Garajal->AI()->DoAction(ACTION_POSSESS_NEXT);
                }

                pInstance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

                pInstance->DoRemoveAurasDueToSpellOnPlayers(SPELL_MARKED_SOUL);
            }
            possesed = false;
        }

        // Reset damage taken while Possessed.
        void SpellHit(Unit* caster, SpellInfo const* spell)
        {
            if (spell->Id == SPELL_POSSESS)
            {
                Talk(SAY_MAR_POSSESSED);
                possesedDamagePct = me->GetHealthPct();
                possesed = true;
            }
        }

        void UpdateAI(uint32 const diff)
        {
            if (!UpdateVictim())
                return;

            if (me->GetPower(POWER_ENERGY) == 100 && !darkPowerScheduled)
            {
                events.ScheduleEvent(EVENT_DARK_POWER, TIMER_DARK_POWER);
                darkPowerScheduled = true;
            }

            if (possesed)
            {
                if (possesedDamagePct - me->GetHealthPct() >= 25.0f)
                {
                    possesed = false;

                    me->RemoveAura(SPELL_POSSESS);
                    me->SetPower(POWER_ENERGY, 0);
                    me->AddAura(SPELL_LINGERING_PRESENCE, me);

                    if (Creature* pGarazhal = ObjectAccessor::GetCreature(*me, pInstance->GetGuidData(DATA_GARAZHAL_THE_SPIRITBINDER)))
                        pGarazhal->AI()->DoAction(ACTION_POSSESS_NEXT);

                    return;
                }
            }

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_WRATH_OF_THE_LOA:
                    DoCastVictim(me->HasAura(SPELL_POSSESS) ? SPELL_WRATH_OF_THE_LOA_POSS : SPELL_WRATH_OF_THE_LOA);
                    events.ScheduleEvent(EVENT_WRATH_OF_THE_LOA, TIMER_WRATH_OF_THE_LOA);
                    break;

                case EVENT_BS_LOA_SPIRIT_FATE:
                    if (!me->HasAura(SPELL_POSSESS))
                    {
                        Talk(SAY_LOA_SPIRIT);
                        if (IsHeroic())
                            DoCast(me, SPELL_TWISTED_FATE);
                        else
                            DoCast(me, SPELL_SHADOWED_LOA_SPIRIT);
                    }
                    else DoCast(me, SPELL_BLESSED_LOA_SPIRIT);
                    events.ScheduleEvent(EVENT_BS_LOA_SPIRIT_FATE, TIMER_LOA_SPIRIT_F);
                    break;

                case EVENT_DARK_POWER:
                    DoCast(me, SPELL_DARK_POWER);
                    if (me->GetPower(POWER_ENERGY) == 100)
                        events.ScheduleEvent(EVENT_DARK_POWER, TIMER_DARK_POWER);
                    else
                        darkPowerScheduled = false;
                    break;

                case EVENT_BERSERK:
                    DoCast(me, SPELL_BERSERK);
                    break;

                default: break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:

        Vehicle* vehicle;
        InstanceScript* pInstance;
        bool possesed;
        float possesedDamagePct;
        bool darkPowerScheduled;

        Creature* GetBoss(uint32 type)
        {
            if (pInstance)
            {
                switch (type)
                {
                case DATA_KAZRAJIN:
                case DATA_SUL_THE_SANDCRAWLER:
                case DATA_HIGH_PRIESTESS_MARLI:
                case DATA_FROST_KING_MALAKK:
                    return pInstance->instance->GetCreature(pInstance->GetGuidData(type));
                }
            }
            return NULL;
        }

        bool IsAllBossesDied()
        {
            if (Creature* pBoss = GetBoss(DATA_KAZRAJIN))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_SUL_THE_SANDCRAWLER))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_FROST_KING_MALAKK))
                if (pBoss->IsAlive())
                    return false;

            if (Creature* pBoss = GetBoss(DATA_HIGH_PRIESTESS_MARLI))
                if (pBoss->IsAlive())
                    return false;

            return true;
        }
    };
};

// Reckless Charge 69453
class npc_kazrajin_reckless_charge : public CreatureScript
{
public:
    npc_kazrajin_reckless_charge() : CreatureScript("npc_kazrajin_reckless_charge") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_kazrajin_reckless_charge_AI(creature);
    }

    struct npc_kazrajin_reckless_charge_AI : public ScriptedAI
    {
        npc_kazrajin_reckless_charge_AI(Creature* creature) : ScriptedAI(creature) { }

        void IsSummonedBy(Unit* /*summoner*/)
        {
            Reset();
        }

        void Reset()
        {
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE));
            me->SetReactState(REACT_PASSIVE);
        }

        void UpdateAI(uint32 const diff) { }
    };
};

// Quicksand 69153
class npc_sul_the_sandcrawler_quicksand : public CreatureScript
{
public:
    npc_sul_the_sandcrawler_quicksand() : CreatureScript("npc_sul_the_sandcrawler_quicksand") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_sul_the_sandcrawler_quicksandAI(creature);
    }

    struct npc_sul_the_sandcrawler_quicksandAI : public Scripted_NoMovementAI
    {
        npc_sul_the_sandcrawler_quicksandAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
        }

        void IsSummonedBy(Unit* summoner)
        {
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC));

            me->AddAura(SPELL_QUICKSAND_VISUAL, me);
            DoCast(me, SPELL_QUICKSAND_SPAWN_EFF, true);

            me->SetReactState(REACT_PASSIVE);

            events.ScheduleEvent(EVENT_ENSNARE_ENTRAPPED, TIMER_ENSNARE_ENTRAPPED);
        }

        void DoAction(int32 const action)
        {
            switch (action)
            {
            case ACTION_SUMMON_LIVING_SAND:
                me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_NOT_SELECTABLE));
                me->RemoveAura(SPELL_QUICKSAND_VISUAL);
                me->SetReactState(REACT_AGGRESSIVE);
                events.CancelEvent(EVENT_ENSNARE_ENTRAPPED);
                events.CancelEvent(EVENT_CHECK_TREACH_GROUND);
                break;

            default: break;
            }
        };

        void UpdateAI(uint32 const diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ENSNARE_ENTRAPPED:
                {
                    std::list<Player*> players;
                    me->GetPlayerListInGrid(players, 5.0f);

                    if (!players.empty())
                    {
                        for (std::list<Player*>::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                        {
                            Player* player = (*itr);

                            if (!player->HasAura(SPELL_QUICKSAND_DMG))
                                me->AddAura(SPELL_QUICKSAND_DMG, player);

                            if (!player->HasAura(SPELL_ENTRAPPED))
                                player->AddAura(SPELL_ENSNARED, player);
                        }
                    }

                    events.ScheduleEvent(EVENT_ENSNARE_ENTRAPPED, TIMER_ENSNARE_ENTRAPPED);
                    break;
                }
             
                default: break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

// Blessed Loa Spirit 69480
class npc_blessed_loa_spirit : public CreatureScript
{
public:
    npc_blessed_loa_spirit() : CreatureScript("npc_blessed_loa_spirit") { }

    struct npc_blessed_loa_spiritAI : public ScriptedAI
    {
        npc_blessed_loa_spiritAI(Creature* creature) : ScriptedAI(creature) { }

        EventMap events;
        Unit* councilorTarget;
        bool healed;

        void IsSummonedBy(Unit* summoner)
        {
            Reset();
            me->SetReactState(REACT_PASSIVE);

            if (!councilorTarget)
            {
                Creature* councilor = me->FindNearestCreature(RAND(NPC_KAZRAJIN, NPC_SUL_SANDCRAWLER, NPC_FROST_KING_MALAKK), 200.0f, true);

                if (!councilor)
                    councilor = me->FindNearestCreature(NPC_KAZRAJIN, 200.0f, true);

                if (!councilor)
                    councilor = me->FindNearestCreature(NPC_SUL_SANDCRAWLER, 200.0f, true);

                if (!councilor)
                    councilor = me->FindNearestCreature(NPC_FROST_KING_MALAKK, 200.0f, true);

                if (!councilor)
                {
                    me->DespawnOrUnsummon();
                    return;
                }

                me->GetMotionMaster()->MoveFollow(councilor, 0.0f, 0.0f);
                councilorTarget = councilor;
            }

            events.ScheduleEvent(EVENT_LOA_SPIRIT_JUMP_KILL, TIMER_LOA_SPIRIT_JUMP_KILL);
        }

        void Reset()
        {
            councilorTarget = NULL;
            healed = false;

            events.Reset();
        }

        void JustSummoned(Creature* summon)
        {
            summon->setActive(true);

            if (me->IsInCombat())
                summon->SetInCombatWithZone();
        }

        void UpdateAI(uint32 const diff)
        {
            // Check for player in range for normal Detonation.
            if (!healed && councilorTarget)
            {
                if (me->IsWithinDistInMap(councilorTarget, 2.0f, true))
                {
                    DoCast(councilorTarget, SPELL_BLESSED_GIFT);
                    me->DespawnOrUnsummon(500);
                    healed = true;
                }
            }

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_LOA_SPIRIT_JUMP_KILL:
                    if (!healed && councilorTarget)
                        me->GetMotionMaster()->MoveJump(Position(councilorTarget->GetPositionX(), councilorTarget->GetPositionY(), councilorTarget->GetPositionZ()), 15.0f, 15.0f);
                    break;

                default: break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_blessed_loa_spiritAI(creature);
    }
};

// Shadowed Loa Spirit 69548
class npc_shadowed_loa_spirit : public CreatureScript
{
public:
    npc_shadowed_loa_spirit() : CreatureScript("npc_shadowed_loa_spirit") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_shadowed_loa_spiritAI(creature);
    }

    struct npc_shadowed_loa_spiritAI : public ScriptedAI
    {
        npc_shadowed_loa_spiritAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);

            playerGUID = 0;
            isExploded = false;
        }

        void Reset()
        {
            events.Reset();

            playerGUID = 0;
            isExploded = false;
        }

        void IsSummonedBy(Unit* summoner)
        {
            if (Unit* target = SelectTarget(SELECT_TARGET_FARTHEST, 0, 100.0f, true))
            {
                target->AddAura(SPELL_MARKED_SOUL, target);
                me->GetMotionMaster()->MoveFollow(target, 0, 0.0f);
            }

            events.ScheduleEvent(EVENT_LOA_SPIRIT_JUMP_KILL, TIMER_LOA_SPIRIT_JUMP_KILL);
        }

        void UpdateAI(uint32 const diff)
        {           

            events.Update(diff);

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_LOA_SPIRIT_JUMP_KILL:
                {
                 
                    {
                        Despawn();
                        return;
                    }

                    me->GetMotionMaster()->MovementExpired(false);
                    break;
                }

                default: break;
                }
            }
        }

    private:

        uint64 playerGUID;
        bool isExploded;

    private:

        void Despawn()
        {
            isExploded = true;
            events.CancelEvent(EVENT_LOA_SPIRIT_JUMP_KILL);
            me->DespawnOrUnsummon(100);
        }        
    };
};

// Twisted Fate 1 69740 - acts as controller for Twisted Fate spell
class npc_marli_twisted_fate : public CreatureScript
{
public:
    npc_marli_twisted_fate() : CreatureScript("npc_marli_twisted_fate") { }

    struct npc_marli_twisted_fateAI : public ScriptedAI
    {
        npc_marli_twisted_fateAI(Creature* creature) : ScriptedAI(creature) { }

        void IsSummonedBy(Unit* summoner)
        {
            Reset();
            me->SetReactState(REACT_PASSIVE);

            if (Unit* target = SelectTarget(SELECT_TARGET_NEAREST, 0, 100.0f, true))
            {
                target->CastSpell(me, SPELL_TWISTED_FATE_CLONE_1, false);
                me->AddAura(SPELL_TWISTED_FATE_DMG_A, me);

                if (Unit* otherTarget = SelectTarget(SELECT_TARGET_FARTHEST, 0, 150.0f, true))
                {
                    if (Creature* otherFate = summoner->SummonCreature(NPC_TWISTED_FATE_2, target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN))
                    {
                        otherFate->SetReactState(REACT_PASSIVE);
                        otherTarget->CastSpell(otherFate, SPELL_TWISTED_FATE_CLONE_2, false);
                        otherFate->AddAura(SPELL_TWISTED_FATE_DMG_A, otherFate);
                        otherFate->GetMotionMaster()->MoveFollow(otherTarget, 2.0f, 0.0f);

                        me->CastSpell(otherFate, SPELL_TWISTED_FATE_VISUAL, true);
                        me->GetMotionMaster()->MoveFollow(otherFate, 0.0f, 0.0f);
                    }
                }
            }

            events.ScheduleEvent(EVENT_LOA_SPIRIT_JUMP_KILL, TIMER_LOA_SPIRIT_JUMP_KILL);
        }

        void Reset() { }

        void UpdateAI(uint32 const diff) { }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_marli_twisted_fateAI(creature);
    }
};

// Possessed 136442
class spell_garajal_councilor_possessed : public SpellScriptLoader
{
public:
    spell_garajal_councilor_possessed() : SpellScriptLoader("spell_garajal_councilor_possessed") { }

    class spell_garajal_councilor_possessed_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_garajal_councilor_possessed_AuraScript);

            void OnTick(AuraEffect const* aurEff)
        {
            Unit* target = GetTarget();

            if (!target)
                return;

            if (!target->ToCreature())
                return;

            if (target->ToCreature()->GetEntry() != NPC_KAZRAJIN && target->ToCreature()->GetEntry() != NPC_SUL_SANDCRAWLER &&
                target->ToCreature()->GetEntry() != NPC_FROST_KING_MALAKK && target->ToCreature()->GetEntry() != NPC_PRINCESS_MARLI)
                return;
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_garajal_councilor_possessed_AuraScript::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_garajal_councilor_possessed_AuraScript();
    }
};

// Soul Fragment 137643
class spell_council_soul_fragment_transfer : public SpellScriptLoader
{
public:
    spell_council_soul_fragment_transfer() : SpellScriptLoader("spell_council_soul_fragment_transfer") { }

    class spell_council_soul_fragment_transfer_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_council_soul_fragment_transfer_SpellScript);

        void HandleTrigger()
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!caster || !target)
                return;

            if (!caster->ToPlayer() || !target->ToPlayer())
                return;

            caster->AddAura(SPELL_SOUL_FRAGMENT, target);
        }

        void Register()
        {
            AfterHit += SpellHitFn(spell_council_soul_fragment_transfer_SpellScript::HandleTrigger);
        }

    };

    SpellScript* GetSpellScript() const
    {
        return new spell_council_soul_fragment_transfer_SpellScript();
    }
};

// Frigid Assault 136903
class spell_malakk_frigid_assault : public SpellScriptLoader
{
public:
    spell_malakk_frigid_assault() : SpellScriptLoader("spell_malakk_frigid_assault") { }

    class spell_malakk_frigid_assault_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_malakk_frigid_assault_AuraScript);

            void OnPeriodic(AuraEffect const* /*aurEff*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetTarget();

            if (!caster || !target)
                return;

            // Check aura stacks for stun apply.
            if (Aura* frigidAssault = target->GetAura(SPELL_FRIGID_ASSAULT_STACKS))
            {

                {
                    target->RemoveAurasDueToSpell(SPELL_FRIGID_ASSAULT_STACKS);
                    caster->AddAura(SPELL_FRIGID_ASSAULT_STUN, target);
                }
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_malakk_frigid_assault_AuraScript::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_malakk_frigid_assault_AuraScript();
    }
};

class spell_malakk_frostbite_aoe : public SpellScriptLoader
{
public:
    spell_malakk_frostbite_aoe() : SpellScriptLoader("spell_malakk_frostbite_aoe") { }

    class spell_malakk_frostbite_aoe_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_malakk_frostbite_aoe_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            if (Creature* pCreature = GetCaster()->ToCreature())
            {
                if (Unit* target = pCreature->AI()->SelectTarget(SELECT_TARGET_RANDOM, 1, 0.0f, true))
                {
                    targets.clear();
                    targets.push_back(target);
                }
            }
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_malakk_frostbite_aoe_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_malakk_frostbite_aoe_SpellScript();
    }
};

class spell_malakk_frostbite_aoe2 : public SpellScriptLoader
{
public:
    spell_malakk_frostbite_aoe2() : SpellScriptLoader("spell_malakk_frostbite_aoe2") { }

    class spell_malakk_frostbite_aoe2_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_malakk_frostbite_aoe2_SpellScript);

        void HandleDamage(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (Aura* aur = GetCaster()->AddAura(SPELL_FROSTBITE, GetHitUnit()))
            {
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_malakk_frostbite_aoe2_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_malakk_frostbite_aoe2_SpellScript();
    }
};

class spell_malakk_frostbite_dmg : public SpellScriptLoader
{
public:
    spell_malakk_frostbite_dmg() : SpellScriptLoader("spell_malakk_frostbite_dmg") { }

    class spell_malakk_frostbite_dmg_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_malakk_frostbite_dmg_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            targetCount = 0;

            if (!GetCaster())
                return;

            if (!targets.empty())
            {
                for (std::list<WorldObject*>::const_iterator itr = targets.begin(); itr != targets.end(); ++itr)
                {
                    if ((*itr)->GetGUID() == GetCaster()->GetGUID())
                        continue;

                    if (Unit* target = (*itr)->ToUnit())
                    {
                        if (!target->HasAura(SPELL_CHILLED_TO_THE_BONE))
                            targetCount++;
                    }
                }
            }

            uint8 maxCount = GetCaster()->GetMap()->Is25ManRaid() ? 4 : 2;

            if (targetCount > maxCount)
                targetCount = maxCount;
        }

        void HandleDamage(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            Aura* aur = GetCaster()->GetAura(SPELL_FROSTBITE);
            if (!aur)
                return;

            if (GetCaster()->GetMap()->IsHeroic())
                GetHitUnit()->AddAura(SPELL_BODY_HEAT, GetHitUnit());
        }

        void HandleAfterCast()
        {
            Aura* aur = GetCaster()->GetAura(SPELL_FROSTBITE);
            if (!aur)
                return;

            uint8 removeStacks = GetCaster()->GetMap()->Is25ManRaid() ? 1 : 2;
            uint8 newStackAmount = 5 - (targetCount * removeStacks);
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_malakk_frostbite_dmg_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
            OnEffectHitTarget += SpellEffectFn(spell_malakk_frostbite_dmg_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
            AfterCast += SpellCastFn(spell_malakk_frostbite_dmg_SpellScript::HandleAfterCast);
        }

    private:

        uint8 targetCount;

    };

    SpellScript* GetSpellScript() const
    {
        return new spell_malakk_frostbite_dmg_SpellScript();
    }
};

class spell_malakk_biting_cold : public SpellScriptLoader
{
public:
    spell_malakk_biting_cold() : SpellScriptLoader("spell_malakk_biting_cold") { }

    class spell_malakk_biting_cold_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_malakk_biting_cold_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            if (!GetCaster())
                return;

            if (Creature* pCreature = GetCaster()->ToCreature())
            {
                if (Unit* target = pCreature->AI()->SelectTarget(SELECT_TARGET_RANDOM, 1, 0.0f, true))
                {
                    targets.clear();
                    targets.push_back(target);
                }
            }
        }

        void HandleDamage(SpellEffIndex effIndex)
        {
            if (!GetCaster() || !GetHitUnit())
                return;
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_malakk_biting_cold_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            OnEffectHitTarget += SpellEffectFn(spell_malakk_biting_cold_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_malakk_biting_cold_SpellScript();
    }
};

// Body Heat 137084
class spell_malakk_body_heat : public SpellScriptLoader
{
public:
    spell_malakk_body_heat() : SpellScriptLoader("spell_malakk_body_heat") { }

    class spell_malakk_body_heat_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_malakk_body_heat_AuraScript);

        void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetTarget();

            if (!caster || !target)
                return;

            caster->AddAura(SPELL_CHILLED_TO_THE_BONE, target);
        }

        void Register()
        {
            OnEffectRemove += AuraEffectRemoveFn(spell_malakk_body_heat_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_malakk_body_heat_AuraScript();
    }
};

// Blessed Loa Spirit 137203
class spell_marli_blessed_loa_spirit : public SpellScriptLoader
{
public:
    spell_marli_blessed_loa_spirit() : SpellScriptLoader("spell_marli_blessed_loa_spirit") { }

    class spell_marli_blessed_loa_spirit_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_marli_blessed_loa_spirit_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();

            if (!caster)
                return;

            caster->CastSpell(caster, SPELL_BLESSED_LOA_SPIRIT_S, true);
            caster->SummonCreature(NPC_BLESSED_LOA_SPIRIT, caster->GetPositionX() + 3.0f, caster->GetPositionY(), caster->GetPositionZ() + 0.1f, 0, TEMPSUMMON_MANUAL_DESPAWN);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_marli_blessed_loa_spirit_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_marli_blessed_loa_spirit_SpellScript();
    }
};

// Shadowed Loa Spirit 137350
class spell_marli_shadowed_loa_spirit : public SpellScriptLoader
{
public:
    spell_marli_shadowed_loa_spirit() : SpellScriptLoader("spell_marli_shadowed_loa_spirit") { }

    class spell_marli_shadowed_loa_spirit_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_marli_shadowed_loa_spirit_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();

            if (!caster)
                return;

            // caster->CastSpell(caster, SPELL_SHADOWED_LOA_SPIRIT_S, true);
            caster->SummonCreature(NPC_SHADOWED_LOA_SPIRIT, caster->GetPositionX() + 3.0f, caster->GetPositionY(), caster->GetPositionZ() + 0.1f, 0, TEMPSUMMON_MANUAL_DESPAWN);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_marli_shadowed_loa_spirit_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_marli_shadowed_loa_spirit_SpellScript();
    }
};

// Twisted Fate 137972 (damage)
class spell_marli_twisted_fate_damage : public SpellScriptLoader
{
public:
    spell_marli_twisted_fate_damage() : SpellScriptLoader("spell_marli_twisted_fate_damage") { }

    class spell_marli_twisted_fate_damage_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_marli_twisted_fate_damage_SpellScript);

        void CalculateDamage(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            if (!caster->ToCreature())
                return;

            Unit* otherNpc = NULL;
            if (caster->ToCreature()->GetEntry() == NPC_TWISTED_FATE_1)
                otherNpc = caster->FindNearestCreature(NPC_TWISTED_FATE_2, 300.0f, true);
            else
                otherNpc = caster->FindNearestCreature(NPC_TWISTED_FATE_1, 300.0f, true);

            if (!otherNpc) // Single.
            {
                SetHitDamage(50000);
                return;
            }

            float distance = caster->GetDistance2d(otherNpc);

            if (distance > 1.0f)
                SetHitDamage(int32(GetHitDamage() - uint32(2500 * distance))); // Drops by 2500 for every yard the npc is away.

            if (GetHitDamage() < 10000) // Don't let it go lower then 10000.
                SetHitDamage(10000);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_marli_twisted_fate_damage_SpellScript::CalculateDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_marli_twisted_fate_damage_SpellScript();
    }
};

class spell_kazrajin_reckless_charge_force : public SpellScriptLoader
{
public:
    spell_kazrajin_reckless_charge_force() : SpellScriptLoader("spell_kazrajin_reckless_charge_force") { }

    class spell_kazrajin_reckless_charge_force_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_kazrajin_reckless_charge_force_SpellScript);

        void FilterTargets(std::list<WorldObject*> &targets)
        {
            if (!GetCaster())
                return;

            Creature* pKazrajin = GetCaster()->ToCreature();
            if (!pKazrajin)
                return;

            Unit* target = pKazrajin->AI()->SelectTarget(SELECT_TARGET_RANDOM, 1, -15.0f, true);
            if (!target)
                target = pKazrajin->AI()->SelectTarget(SELECT_TARGET_RANDOM, 1, 0.0f, true);
            if (!target)
                target = pKazrajin->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true);

            if (target)
            {
                targets.clear();
                targets.push_back(target);
            }
        }

        void HandleHit(SpellEffIndex /*effIndex*/) 
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            Creature* pKazrajin = GetCaster()->ToCreature();
            if (!pKazrajin)
                return;

            Creature* pTrigger = pKazrajin->SummonCreature(NPC_RECKLESS_CHARGE, *GetHitUnit(), TEMPSUMMON_TIMED_DESPAWN, 10000);
            if (!pTrigger)
                return;

            pKazrajin->SetOrientation(pKazrajin->GetAngle(pTrigger));

            uint32 distance = (int32)GetCaster()->GetExactDist(pTrigger);

            for (uint32 i = 0; i < distance; i += 2)
            {
                Position pos;
                if (Creature* pTrigger = pKazrajin->SummonCreature(WORLD_TRIGGER, pos.GetPositionX(), pos.GetPositionY(), pos.GetPositionZ(), 0.0f))
                {
                    pTrigger->SetDisplayId(11686);
                    pTrigger->AddAura(SPELL_RECKLESS_CHARGE_MARK, pTrigger);
                }
            }

            pKazrajin->AI()->DoAction(ACTION_RECKLESS_CHARGE);
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_kazrajin_reckless_charge_force_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            OnEffectHitTarget += SpellEffectFn(spell_kazrajin_reckless_charge_force_SpellScript::HandleHit, EFFECT_0, SPELL_EFFECT_FORCE_CAST);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_kazrajin_reckless_charge_force_SpellScript();
    }
};

class spell_kazrajin_reckless_charge : public SpellScriptLoader
{
public:
    spell_kazrajin_reckless_charge() : SpellScriptLoader("spell_kazrajin_reckless_charge") { }

    class spell_kazrajin_reckless_charge_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_kazrajin_reckless_charge_AuraScript);

        void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (!GetCaster())
                return;

            GetCaster()->CastSpell(GetCaster(), SPELL_RECKLESS_CHARGE_DUMMY, true);
        }

        void Register()
        {
            AfterEffectApply += AuraEffectApplyFn(spell_kazrajin_reckless_charge_AuraScript::OnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_kazrajin_reckless_charge_AuraScript();
    }
};

class spell_kazrajin_reckless_charge_dummy : public SpellScriptLoader
{
public:
    spell_kazrajin_reckless_charge_dummy() : SpellScriptLoader("spell_kazrajin_reckless_charge_dummy") { }

    class spell_kazrajin_reckless_charge_dummy_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_kazrajin_reckless_charge_dummy_SpellScript);

        void HandleHit(SpellEffIndex /*effIndex*/)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (Creature* pKazrajin = GetCaster()->ToCreature())
                pKazrajin->AI()->DoAction(ACTION_RECKLESS_CHARGE_MOVE);

            GetCaster()->SetOrientation(GetCaster()->GetAngle(GetHitUnit()));

            uint32 distance = (int32)GetCaster()->GetExactDist(GetHitUnit());

            GetCaster()->GetMotionMaster()->MoveCharge(GetHitUnit()->GetPositionX(), GetHitUnit()->GetPositionY(), GetHitUnit()->GetPositionZ());

            for (uint32 i = 0; i < distance; i += 3)
            {
                Position pos;
                GetCaster()->CastSpell(pos.GetPositionX(), pos.GetPositionY(), pos.GetPositionZ(), SPELL_RECKLESS_CHARGE_AREA, true);
            }

            if (Creature* pDummy = GetHitUnit()->ToCreature())
                pDummy->DespawnOrUnsummon();
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_kazrajin_reckless_charge_dummy_SpellScript::HandleHit, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_kazrajin_reckless_charge_dummy_SpellScript();
    }
};

class spell_sul_the_sandcrawler_quicksand_force : public SpellScriptLoader
{
public:
    spell_sul_the_sandcrawler_quicksand_force() : SpellScriptLoader("spell_sul_the_sandcrawler_quicksand_force") { }

    class spell_sul_the_sandcrawler_quicksand_force_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sul_the_sandcrawler_quicksand_force_SpellScript);

        void FilterTargets(std::list<WorldObject*> &targets)
        {
            if (!GetCaster())
                return;

            Creature* pSul = GetCaster()->ToCreature();
            if (!pSul)
                return;

            Unit* target = pSul->AI()->SelectTarget(SELECT_TARGET_RANDOM, 1, -15.0f, true);
            if (!target)
                target = pSul->AI()->SelectTarget(SELECT_TARGET_RANDOM, 1, 0.0f, true);
            if (!target)
                target = pSul->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true);

            if (target)
            {
                targets.clear();
                targets.push_back(target);
            }
        }

        void HandleHit(SpellEffIndex /*effIndex*/)
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            Creature* pSul = GetCaster()->ToCreature();
            if (!pSul)
                return;

            pSul->SummonCreature(NPC_LIVING_SAND, *GetHitUnit());
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sul_the_sandcrawler_quicksand_force_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
            OnEffectHitTarget += SpellEffectFn(spell_sul_the_sandcrawler_quicksand_force_SpellScript::HandleHit, EFFECT_0, SPELL_EFFECT_FORCE_CAST);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_sul_the_sandcrawler_quicksand_force_SpellScript();
    }
};

class spell_sul_the_sandcrawler_quicksand_dmg : public SpellScriptLoader
{
public:
    spell_sul_the_sandcrawler_quicksand_dmg() : SpellScriptLoader("spell_sul_the_sandcrawler_quicksand_dmg") { }

    class spell_sul_the_sandcrawler_quicksand_dmg_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sul_the_sandcrawler_quicksand_dmg_AuraScript);

        void HandlePeriodic(AuraEffect const* aurEff)
        {
            if (!GetUnitOwner())
                return;

            if (!GetUnitOwner()->FindNearestCreature(NPC_LIVING_SAND, 5.0f))
            {
                Remove();
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_sul_the_sandcrawler_quicksand_dmg_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_sul_the_sandcrawler_quicksand_dmg_AuraScript();
    }
};

/*** INTRO ***/

enum IntroYells
{
    SAY_INTRO_GARAJAL_1 = 0, // Des fools thought they beat me once before. Dey only make me stronger. Now we show dem da true power of the Zandalari! - sound 35404.
    SAY_INTRO_GARAJAL_2,     // Let me share dis gift with ya! - sound 35395.
    SAY_INTRO_GARAJAL_3,     // Da Zandalari cannot be stopped! - sound 35400.
    SAY_INTRO_GARAJAL_4,     // Wit de Thunder King's power de Zandalari will be reborn! - sound 35401.
    SAY_INTRO_GARAJAL_5,     // De Thunder King will reward us for stoppin' ya! - sound 35397.
    SAY_INTRO_GARAJAL_6,     // Lei Shen, let us prove ta ya the might of the Zandalari. We will crush des intruders where dey stand! - sound 35405.
};

// Garajal council intro 70056
class npc_garajal_council_intro : public CreatureScript
{
public:
    npc_garajal_council_intro() : CreatureScript("npc_garajal_council_intro") { }

    struct npc_garajal_council_introAI : public ScriptedAI
    {
        npc_garajal_council_introAI(Creature* creature) : ScriptedAI(creature)
        {
            introDone = false;
        }

        bool introDone;

        void Reset()
        {
            me->AddUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE));
            me->SetDisplayId(11686); // invisible.
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (!introDone && me->IsWithinDistInMap(who, 25.0f, true) && who->GetTypeId() == TYPEID_PLAYER)
            {
                me->SetReactState(REACT_PASSIVE);
                me->SetDisplayId(47230);

                if (me->GetPositionX() > 5681.0f && me->GetPositionX() < 5682.0f)
                {
                    Talk(SAY_INTRO_GARAJAL_1);
                    me->DespawnOrUnsummon(11000);
                }

                if (me->GetPositionX() > 5729.0f && me->GetPositionX() < 5730.0f)
                {
                    Talk(SAY_INTRO_GARAJAL_2);
                    me->DespawnOrUnsummon(3000);
                }

                if (me->GetPositionX() > 5769.0f && me->GetPositionX() < 5770.0f)
                {
                    Talk(SAY_INTRO_GARAJAL_3);
                    me->DespawnOrUnsummon(3000);
                }

                if (me->GetPositionX() > 5863.0f && me->GetPositionX() < 5864.0f)
                {
                    Talk(SAY_INTRO_GARAJAL_4);
                    me->DespawnOrUnsummon(5000);
                }

                if (me->GetPositionX() > 6038.0f && me->GetPositionX() < 6039.0f)
                {
                    Talk(SAY_INTRO_GARAJAL_5);
                    me->DespawnOrUnsummon(4000);
                }

                if (me->GetPositionX() > 6045.0f && me->GetPositionX() < 6046.0f)
                {
                    Talk(SAY_INTRO_GARAJAL_6);
                    me->DespawnOrUnsummon(8000);
                }

                introDone = true;
            }
        }

        void UpdateAI(uint32 const diff) { }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_garajal_council_introAI(creature);
    }
};

void AddSC_boss_council_of_elders()
{
    new boss_spirit_of_gara_jal_council();
    new boss_kazra_jin();
    new boss_sul_the_sandcrawler();
    new boss_frost_king_malakk();
    new boss_high_priestess_mar_li();
    new npc_kazrajin_reckless_charge();
    new npc_sul_the_sandcrawler_quicksand();
    new npc_blessed_loa_spirit();
    new npc_shadowed_loa_spirit();
    new npc_marli_twisted_fate();
    new spell_garajal_councilor_possessed();
    new spell_council_soul_fragment_transfer();
    new spell_malakk_frigid_assault();
    new spell_malakk_frostbite_aoe();
    new spell_malakk_frostbite_aoe2();
    new spell_malakk_frostbite_dmg();
    new spell_malakk_body_heat();
    new spell_malakk_biting_cold();
    new spell_marli_blessed_loa_spirit();
    new spell_marli_shadowed_loa_spirit();
    new spell_marli_twisted_fate_damage();
    new spell_kazrajin_reckless_charge_force();
    new spell_kazrajin_reckless_charge();
    new spell_kazrajin_reckless_charge_dummy();
    new spell_sul_the_sandcrawler_quicksand_force();
    new spell_sul_the_sandcrawler_quicksand_dmg();

    new npc_garajal_council_intro();
}

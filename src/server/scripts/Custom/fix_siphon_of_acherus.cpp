/* spell_quest.cpp*/

enum DeathComesFromOnHigh
{
    NPC_NEW_AVALON_FORGE                = 28525,
    NPC_NEW_AVALON_TOWN_HALL            = 28543,
    NPC_SCARLET_HOLD                    = 28542,
    NPC_CHAPEL_OF_THE_CRIMSON_FLAME     = 28544
};

// 51858 - Siphon of Acherus
class spell_q12641_death_comes_from_on_high : public SpellScriptLoader
{
    public:
        spell_q12641_death_comes_from_on_high() : SpellScriptLoader("spell_q12641_death_comes_from_on_high") { }

        class spell_q12641_death_comes_from_on_high_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_q12641_death_comes_from_on_high_SpellScript);

            void HandleDummy(SpellEffIndex)
            {
                Unit* caster = GetCaster();
                float distance = 45.0f; //45 yards is the original effect range of siphon of acherus

                if (Creature* npc = caster->FindNearestCreature(NPC_NEW_AVALON_FORGE, distance))
                {
                    if (Player* player = GetCaster()->GetCharmerOrOwner()->ToPlayer())
                        player->KilledMonsterCredit(NPC_NEW_AVALON_FORGE);
                }

                if (Creature* npc = caster->FindNearestCreature(NPC_NEW_AVALON_TOWN_HALL, distance))
                {
                    if (Player* player = GetCaster()->GetCharmerOrOwner()->ToPlayer())
                        player->KilledMonsterCredit(NPC_NEW_AVALON_TOWN_HALL);
                }

                if (Creature* npc = caster->FindNearestCreature(NPC_SCARLET_HOLD, distance))
                {
                    if (Player* player = GetCaster()->GetCharmerOrOwner()->ToPlayer())
                        player->KilledMonsterCredit(NPC_SCARLET_HOLD);
                }

                if (Creature* npc = caster->FindNearestCreature(NPC_CHAPEL_OF_THE_CRIMSON_FLAME, distance))
                {
                    if (Player* player = GetCaster()->GetCharmerOrOwner()->ToPlayer())
                        player->KilledMonsterCredit(NPC_CHAPEL_OF_THE_CRIMSON_FLAME);
                }
            }

            void Register() override
            {
                OnEffectHitTarget += SpellEffectFn(spell_q12641_death_comes_from_on_high_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const override
        {
            return new spell_q12641_death_comes_from_on_high_SpellScript();
        }
};
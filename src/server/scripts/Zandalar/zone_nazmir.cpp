/*
 * Copyright (C) 2017-2020 WoWLEgacy <https://github.com/AshamaneProject>
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

#include "ScriptedCreature.h"

//after https://www.wowhead.com/spell=257255/play-chapter-1-movie-dnt do https://www.wowhead.com/spell=242682/summon-talanjis-ride-dnt

 // 257255
class spell_play_chapter_1 : public AuraScript
{
    PrepareAuraScript(spell_play_chapter_1);

    void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        caster->CastSpell(caster, 242682);
        if (Creature* tzena = caster->FindNearestCreature(121530, 5))
        {
            caster->CastSpell(tzena, 46598);
        }
    }

    void Register() override
    {
        AfterEffectRemove += AuraEffectRemoveFn(spell_play_chapter_1::OnRemove, EFFECT_2, SPELL_AURA_PLAY_SCENE, AURA_EFFECT_HANDLE_REAL);
    }
};

void AddSC_zone_nazmir()
{
    RegisterAuraScript(spell_play_chapter_1);
}

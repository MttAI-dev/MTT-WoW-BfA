#include "Scenario.h"
#include "OutdoorPvP.h"
#include "AccountMgr.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "SpellMgr.h"
#include "ScriptedGossip.h"
#include "ScriptedCreature.h"
#include "ScriptedEscortAI.h"
#include "Log.h"
#include "Conversation.h"
#include "CreatureTextMgr.h"
#include "PhasingHandler.h"
#include "AreaTriggerAI.h"
#include "Spell.h"
#include "SpellAuras.h"
#include "SpellScript.h"
#include "WorldQuestMgr.h"
#include "GameEventMgr.h"

//251888
class spell_fire_enchanted : public AuraScript
{
    PrepareAuraScript(spell_fire_enchanted);

    void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        if (GetTargetApplication()->GetRemoveMode() == AURA_REMOVE_BY_DEATH)
            caster->CastSpell(caster, 251891, false);
    }

    void Register() override
    {
        OnEffectRemove += AuraEffectRemoveFn(spell_fire_enchanted::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
    }
};

void AddSC_invasion_point_argus()
{
   RegisterAuraScript(spell_fire_enchanted);
}
import com.Components.WindowComponentContent;
import com.Utils.Archive;
import com.Utils.LDBFormat;
import com.GameInterface.Game.Character;
import gfx.controls.ScrollingList;
import com.GameInterface.CharacterCreation.CharacterCreation;
import com.GameInterface.SkillWheel.SkillWheel;
import com.GameInterface.SkillWheel.SkillTemplate;
import GUI.SkillHive.SkillHiveFeatHelper;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.ProjectSpell;
import com.GameInterface.Spell;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Lore;
import com.GameInterface.Game.Shortcut;
intrinsic class GUI.SkillHiveSimple.DecksPage extends WindowComponentContent
{
	private var m_ClassHeader : TextField;
	private var m_ClassDesc : TextField;
	private var m_WeaponHeader : TextField;
	private var m_PrimaryText : TextField;
	private var m_SecondaryText : TextField;
	private var m_WeaponName_0 : TextField;
	private var m_WeaponName_1 : TextField;
	private var m_Weapon_0 : MovieClip;
	private var m_Weapon_1 : MovieClip;
	private var m_RoleHeader : TextField;
	private var m_RoleName_0 : TextField;
	private var m_RoleName_1 : TextField;
	private var m_RoleDesc_0 : TextField;
	private var m_RoleDesc_1 : TextField;
	private var m_AbilitiesHeader : TextField;
	private var m_Active_0 : MovieClip;
	private var m_Active_1 : MovieClip;
	private var m_Active_2 : MovieClip;
	private var m_Active_3 : MovieClip;
	private var m_Active_4 : MovieClip;
	private var m_Active_5 : MovieClip;
	private var m_Passive_0 : MovieClip;
	private var m_Passive_1 : MovieClip;
	private var m_Passive_2 : MovieClip;
	private var m_Passive_3 : MovieClip;
	private var m_Passive_4 : MovieClip;
	private var m_ListHeader : TextField;
	private var m_DeckScrollingList : ScrollingList;
	private var m_ClaimButton : MovieClip;
	private var m_EquipButton : MovieClip;
	private var m_Character : Character;
	private var m_TemplateData : Array;
	private var m_CharacterCreationIF : CharacterCreation;

	public function DecksPage();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function PopulateDecks();

	private function UpdateSelectedDeck(deckIndex:Number) : Void;

	private function SlotSelectDeck(event:Object) : Void;

	private function OnClickClaim() : Void;

	private function OnClickEquip() : Void;

	private function GetWeaponRequirements(template:SkillTemplate);

	private function SlotFeatTrained();

	public function SlotTagAdded(tagId:Number) : Void;

	public function OnModuleActivated(config:Archive) : Void;

	public function OnModuleDeactivated();

}
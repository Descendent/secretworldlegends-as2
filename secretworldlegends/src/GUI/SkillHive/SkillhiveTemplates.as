import com.GameInterface.FeatData;
import com.GameInterface.FeatInterface;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.Shortcut;
import com.GameInterface.Log;
import com.GameInterface.Lore;
import com.GameInterface.ProjectSpell;
import com.GameInterface.SkillWheel.SkillWheel;
import com.GameInterface.SkillWheel.SkillTemplate;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Spell;
import com.GameInterface.Utils;
import com.Utils.Colors;
import com.Utils.ID32;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.controls.Button;
import gfx.controls.DropdownMenu;
import gfx.controls.TextArea;
import gfx.core.UIComponent;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import GUI.SkillHive.SkillHiveFeatHelper;
import GUI.SkillHive.SkillHiveSignals;
import GUI.SkillHive.TemplateAbility;
intrinsic dynamic class GUI.SkillHive.SkillhiveTemplates extends UIComponent
{
	static private var PANOPTIC_CORE_ACHIEVEMENT_ID_GAMETWEAK : Number;
	public var SignalTemplateSelected : Signal;
	private var m_SelectedTemplateIndex : Number;
	private var m_TemplateData : Array;
	private var m_TemplatesDropdown : MovieClip;
	private var m_TemplateDescription : TextArea;
	private var m_ShowingDescription : Boolean;
	private var m_SelectedAchievement : Number;
	private var m_ImageContainer : MovieClip;
	private var m_WeaponRequirementClip : MovieClip;
	private var m_PassiveAbilitiesClip : MovieClip;
	private var m_ActiveAbilitiesClip : MovieClip;
	private var m_DetailedTextButton : MovieClip;
	private var m_NextButton : MovieClip;
	private var m_PreviousButton : MovieClip;
	private var m_ButtonBar : MovieClip;
	private var m_RewardsIcon : MovieClip;
	private var m_TabButtonArray : Array;
	private var m_ClaimButton : MovieClip;
	private var m_EquipButton : MovieClip;
	private var m_ClientCharacter : Character;

	private function configUI() : Void;

	private function InitButtonBar() : Void;

	private function UpdateTabViews() : Void;

	private function SlotButtonBarFocus() : Void;

	public function SlotTagAdded(tagId:Number) : Void;

	public function SetFaction(factionId:Number) : Void;

	private function OnTemplateSelected(event:Object) : Void;

	private function OnClickNext() : Void;

	private function OnClickPrevious() : Void;

	private function OnClickClaim() : Void;

	private function OnClickEquip() : Void;

	private function SetTemplate(templateIndex:Number) : Void;

	private function SetNoneTemplate() : Void;

	private function RemoveTemplateClips() : Void;

	private function AddTemplateClips() : Void;

	public function SlotClickedTemplateAbility(featData:FeatData) : Void;

	private function LoadImage(container:MovieClip, mediaId:ID32) : Void;

	public function SlotUpdateTemplates() : Void;

	public function GetSelectedTemplateIndex() : Number;

	public function SetSelectedTemplate(templateIndex:Number) : Void;

	public function GetTabIndex() : Number;

	public function SetTabIndex(tabIndex:Number) : Void;

}
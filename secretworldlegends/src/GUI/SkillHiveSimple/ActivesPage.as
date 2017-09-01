import GUI.SkillHiveSimple.AbilityPageBase;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.ProjectFeatInterface;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Game.Character;
import com.GameInterface.Lore;
import com.GameInterface.Tooltip.*;
import com.GameInterface.Game.Shortcut;
import com.GameInterface.Utils;
import com.GameInterface.ShopInterface;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import com.Utils.Text;
import gfx.controls.Button;
import GUI.SkillHiveSimple.AbilityClip;
import GUI.SkillHiveSimple.CapstoneClip;
intrinsic class GUI.SkillHiveSimple.ActivesPage extends AbilityPageBase
{
	private var m_TabBlade : Button;
	private var m_TabHammer : Button;
	private var m_TabFist : Button;
	private var m_TabBlood : Button;
	private var m_TabChaos : Button;
	private var m_TabElemental : Button;
	private var m_TabShotgun : Button;
	private var m_TabPistol : Button;
	private var m_TabRifle : Button;
	private var m_CapstoneReady : MovieClip;
	private var m_Cell0_Ability0 : MovieClip;
	private var m_Cell0_Ability1 : MovieClip;
	private var m_Cell0_Ability2 : MovieClip;
	private var m_Cell0_Ability3 : MovieClip;
	private var m_Cell0_Ability4 : MovieClip;
	private var m_Cell1_Ability0 : MovieClip;
	private var m_Cell1_Ability1 : MovieClip;
	private var m_Cell1_Ability2 : MovieClip;
	private var m_Cell1_Ability3 : MovieClip;
	private var m_Cell1_Ability4 : MovieClip;
	private var m_Cell2_Ability0 : MovieClip;
	private var m_Cell2_Ability1 : MovieClip;
	private var m_Cell2_Ability2 : MovieClip;
	private var m_Cell2_Ability3 : MovieClip;
	private var m_Cell2_Ability4 : MovieClip;
	private var m_Capstone : MovieClip;
	private var m_Cell0Name : TextField;
	private var m_Cell1Name : TextField;
	private var m_Cell2Name : TextField;
	private var m_DetailName : TextField;
	private var m_DetailDivider : MovieClip;
	private var m_DetailCastIcon : MovieClip;
	private var m_DetailRecastIcon : MovieClip;
	private var m_DetailRecastTime : TextField;
	private var m_DetailCastTime : TextField;
	private var m_DetailAbilityType : TextField;
	private var m_DetailAbilityType_Capstone : TextField;
	private var m_DetailIcon : AbilityClip;
	private var m_DetailCapstoneIcon : CapstoneClip;
	private var m_DetailDescription : TextField;
	private var m_DetailCost : MovieClip;
	private var m_DetailEquipAnchor : MovieClip;
	private var m_DetailBG : MovieClip;
	private var m_CapstoneProgress : MovieClip;
	private var m_NumTrainedCapstones : Number;
	static private var ACTIVES_PER_CELL : Number;
	static private var NUM_CELLS : Number;
	static private var ABILITY_NAME_HEIGHT : Object;

	public function ActivesPage();

	private function configUI();

	private function UpdateTutorialBlocker();

	private function UpdateCells(clusterId:Number) : Void;

	private function UpdateAbilities(clusterId:Number) : Void;

	private function SetAbilityNameDisplay(ability:MovieClip, feat:FeatData);

	private function FocusAbility(feat:FeatData);

	private function UpdateCapstoneProgress();

	private function UpdateCapstoneBonus();

	private function UpdateCost(costClip:MovieClip, feat:FeatData);

	private function UpdateDetailButton();

	private function SlotDetailButtonClicked();

	private function HideDetails(hideDetails:Boolean);

	private function SlotFeatTrained();

	private function GetNextCapstone() : FeatData;

	private function GetCurrentCapstone();

	private function GetNumTrainedCapstones() : Number;

	private function UpdateFooter();

	private function BuyPoints();

}
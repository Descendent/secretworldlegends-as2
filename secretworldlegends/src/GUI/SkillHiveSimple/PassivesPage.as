import GUI.SkillHiveSimple.AbilityPageBase;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.ProjectFeatInterface;
import com.GameInterface.Lore;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.*;
import com.GameInterface.Game.Character;
import com.GameInterface.Spell;
import com.GameInterface.ShopInterface;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.Utils.Text;
import gfx.controls.Button;
import GUI.SkillHiveSimple.AbilityClip;
import GUI.SkillHiveSimple.BoostClip;
intrinsic class GUI.SkillHiveSimple.PassivesPage extends AbilityPageBase
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
	private var m_Cell0_Ability0 : MovieClip;
	private var m_Cell1_Ability0 : MovieClip;
	private var m_Cell1_Ability1 : MovieClip;
	private var m_Cell1_Ability2 : MovieClip;
	private var m_Cell1_Ability3 : MovieClip;
	private var m_Cell1_Ability4 : MovieClip;
	private var m_Cell1_Ability5 : MovieClip;
	private var m_Cell1_Ability6 : MovieClip;
	private var m_Cell1_Ability7 : MovieClip;
	private var m_Cell1_Ability8 : MovieClip;
	private var m_Cell1_Ability9 : MovieClip;
	private var m_Cell2_Ability0 : MovieClip;
	private var m_Cell2_Ability1 : MovieClip;
	private var m_Cell2_Ability2 : MovieClip;
	private var m_Cell2_Ability3 : MovieClip;
	private var m_Cell2_Ability4 : MovieClip;
	private var m_Cell2_Ability5 : MovieClip;
	private var m_Cell2_Ability6 : MovieClip;
	private var m_Cell2_Ability7 : MovieClip;
	private var m_Cell2_Ability8 : MovieClip;
	private var m_Cell2_Ability9 : MovieClip;
	private var m_Cell3_Ability0 : MovieClip;
	private var m_Cell3_Ability1 : MovieClip;
	private var m_Cell3_Ability2 : MovieClip;
	private var m_Cell3_Ability3 : MovieClip;
	private var m_Cell3_Ability4 : MovieClip;
	private var m_Cell3_Ability5 : MovieClip;
	private var m_Cell3_Ability6 : MovieClip;
	private var m_Cell3_Ability7 : MovieClip;
	private var m_Cell3_Ability8 : MovieClip;
	private var m_Cell3_Ability9 : MovieClip;
	private var m_Cell4_Ability0 : MovieClip;
	private var m_Cell4_Ability1 : MovieClip;
	private var m_Cell4_Ability2 : MovieClip;
	private var m_Cell4_Ability3 : MovieClip;
	private var m_Cell4_Ability4 : MovieClip;
	private var m_Cell4_Ability5 : MovieClip;
	private var m_Cell4_Ability6 : MovieClip;
	private var m_Cell4_Ability7 : MovieClip;
	private var m_Cell4_Ability8 : MovieClip;
	private var m_Cell4_Ability9 : MovieClip;
	private var m_Cell5_Ability0 : MovieClip;
	private var m_Cell5_Ability1 : MovieClip;
	private var m_Cell5_Ability2 : MovieClip;
	private var m_Cell5_Ability3 : MovieClip;
	private var m_Cell5_Ability4 : MovieClip;
	private var m_Cell5_Ability5 : MovieClip;
	private var m_Cell5_Ability6 : MovieClip;
	private var m_Cell5_Ability7 : MovieClip;
	private var m_Cell5_Ability8 : MovieClip;
	private var m_Cell5_Ability9 : MovieClip;
	private var m_DetailNoSelected : TextField;
	private var m_DetailName : TextField;
	private var m_DetailDivider : MovieClip;
	private var m_DetailAbilityType : TextField;
	private var m_DetailIcon : AbilityClip;
	private var m_DetailBoostIcon : BoostClip;
	private var m_DetailIconBG : MovieClip;
	private var m_DetailDescription : TextField;
	private var m_DetailCost : MovieClip;
	private var m_DetailEquipAnchor : MovieClip;
	private var m_DetailBG : MovieClip;
	private var m_EquippedPassivesText : TextField;
	static private var UNLOCK_CELL : Number;
	static private var PASSIVES_PER_CELL : Number;
	static private var NUM_CELLS : Number;
	static private var ABILITY_NAME_HEIGHT : Object;

	public function PassivesPage();

	private function configUI();

	private function UpdateTutorialBlocker();

	private function UpdateCells(clusterId:Number) : Void;

	private function UpdateAbilities(clusterId:Number) : Void;

	private function FocusAbility(feat:FeatData);

	private function UpdateCost(costClip:MovieClip, feat:FeatData);

	private function UpdateDetailButton();

	private function SlotDetailButtonClicked();

	private function HideDetails(hideDetails:Boolean);

	private function UpdateFooter();

	private function BuyPoints();

}
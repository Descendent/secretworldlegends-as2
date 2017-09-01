import GUI.SkillHiveSimple.AbilityPageBase;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.ProjectFeatInterface;
import com.GameInterface.Game.Character;
import com.GameInterface.Lore;
import com.Utils.LDBFormat;
import gfx.controls.Button;
intrinsic class GUI.SkillHiveSimple.AuxPage extends AbilityPageBase
{
	private var m_TabLauncher : Button;
	private var m_TabChainsaw : Button;
	private var m_TabQuantum : Button;
	private var m_TabWhip : Button;
	private var m_TabFlamethrower : Button;
	private var m_Cell0_Ability0 : MovieClip;
	private var m_Cell0_Ability1 : MovieClip;
	private var m_Cell0_Ability2 : MovieClip;
	private var m_Cell0_Ability3 : MovieClip;
	private var m_WeaponTypeBG : MovieClip;
	private var m_WeaponTypeColor : MovieClip;
	private var m_WeaponTypeName : TextField;
	private var m_BGContent : MovieClip;
	private var m_Footer : MovieClip;
	private var m_BackgroundIcon : MovieClip;
	static private var ACTIVES_PER_CELL : Number;
	static private var NUM_CELLS : Number;
	static private var ABILITY_NAME_HEIGHT : Object;
	static private var AUX_UNLOCK_TAG : Number;

	public function AuxPage();

	private function configUI();

	private function UpdateHeader(headerData:Object) : Void;

	private function UpdateTutorialBlocker();

	private function UpdateBackground(iconName:String);

	private function UpdatePurchaseBlocker(clusterId:Number);

	private function SlotTagAdded(tagId:Number);

	private function UpdateCells(clusterId:Number) : Void;

	private function UpdateEquipPanels(clusterId:Number);

	private function UpdateFooter();

}
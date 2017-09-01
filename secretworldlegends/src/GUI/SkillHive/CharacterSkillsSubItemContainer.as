import flash.geom.Point;
import gfx.controls.Button;
import GUI.SkillHive.CharacterPointsSubSkillsBar;
import com.GameInterface.CharacterPointRowData;
import com.GameInterface.FeatInterface;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Character;
import com.GameInterface.ProjectFeatInterface;
intrinsic class GUI.SkillHive.CharacterSkillsSubItemContainer extends MovieClip
{
	static private var TDB_SP : String;
	public var m_BuyButton : MovieClip;
	private var m_Id : Number;
	private var m_ParentId : Number;
	private var m_Label : TextField;
	private var m_Category : String;
	private var m_IconName : String;
	private var m_MouseBlocker : MovieClip;
	private var m_WarningClip : MovieClip;
	private var m_SubSkillsBar : CharacterPointsSubSkillsBar;
	private var m_SubSkillsData : Array;
	private var m_TrainableFeatID : Number;
	private var m_CurrentFeatID : Number;
	private var m_CurrentFeatCost : Number;
	private var m_CurrentFeatLevel : Number;
	private var m_CharacterSkillPoints : Number;
	private var m_HasConnectedToButton : Boolean;
	private var m_Levels : Number;
	private var m_Tooltip : TooltipInterface;
	private var m_NextTooltip : TooltipInterface;

	public function CharacterSkillsSubItemContainer();

	public function onLoad();

	public function SlotBuy() : Void;

	private function BuyFeat() : Void;

	private function RemoveWarningClip() : Void;

	public function UpdateData() : Void;

	public function ClearData() : Void;

	private function MouseBlockerClickHandler() : Void;

	public function SetData(subSkillsArray:Array) : Void;

	public function AddSubSkill(subSkill:CharacterPointRowData) : Void;

	public function SetCategory(value:String) : Void;

	public function SetLevels(levels:Number) : Void;

	public function SetLabel(value:String) : Void;

	public function SetBuyButtonLabel(value:String) : Void;

	public function HasFeat(featID) : Boolean;

	public function UpdateCharacterSkillPoints(newAmount:Number) : Void;

	private function UpdateBuyButton() : Void;

	public function SetID(id:Number) : Void;

	public function SetParentID(id:Number) : Void;

	public function GetID(id:Number) : Number;

	public function SetIconName(iconName:String);

	public function ShowTooltip();

	public function onMouseMove();

	public function RemoveTooltip();

	private function IsWeaponSkill(skillCategory:Number);

}
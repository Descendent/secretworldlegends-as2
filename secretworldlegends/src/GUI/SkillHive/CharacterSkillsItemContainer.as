import com.Utils.GlobalSignal;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import GUI.SkillHive.CharacterPointsSkillsBar;
import GUI.SkillHive.CharacterPointsSubSkillsBar;
import GUI.SkillHive.CharacterSkillsSubItemContainer;
import com.GameInterface.Log;
import com.GameInterface.CharacterPointRowData;
import com.GameInterface.CharacterPointData;
import com.Utils.Signal;
import com.GameInterface.ProjectFeatInterface;
import com.GameInterface.FeatInterface;
import com.Utils.LDBFormat;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.TooltipInterface;
intrinsic class GUI.SkillHive.CharacterSkillsItemContainer extends MovieClip
{
	private var COLLAPSED_HEIGHT : Number;
	private var SUBSKILL_HEIGHT : Number;
	private var FOOTER_HEIGHT : Number;
	private var TWEEN_SPEED : Number;
	private var ICON_EXPANDED_PERCENT : Number;
	private var ICON_DEFAULT_X : Number;
	private var m_TDB_Rank : String;
	private var m_TopLine : MovieClip;
	private var m_IconContainer : MovieClip;
	private var m_Label : TextField;
	private var m_ToolTipHitTest : MovieClip;
	private var m_Category : String;
	private var m_MoreIcon : MovieClip;
	private var m_SkillsBar : CharacterPointsSkillsBar;
	private var m_Background : MovieClip;
	private var m_SubSkills : Array;
	private var m_Data : CharacterPointData;
	private var m_Levels : Number;
	public var m_Index : Number;
	public var SignalStartAnimation : Signal;
	public var SignalStopAnimation : Signal;
	private var m_IsCollapsed : Boolean;

	public function CharacterSkillsItemContainer();

	public function onLoad() : Void;

	public function AddSubSkills() : Void;

	private function CountLevels(subSkills:Array);

	public function BackgroundClickHandler() : Void;

	public function GetBackgroundHeight() : Number;

	private function ToggleBackgroundExpansion() : Void;

	private function ToggleSubSkillsAlpha() : Void;

	private function ToggleComplete() : Void;

	public function SlotStopAnimation() : Void;

	public function SlotFeatTrained(featId:Number) : Void;

	private function ToggleMoreIcon() : Void;

	private function UpdateSkillBarLabelAlpha() : Void;

	public function ClearSubSkillsData();

	public function SetCategory(value:String) : Void;

	public function SetData(value:CharacterPointData) : Void;

	private function SetLevels(levels:Number) : Void;

	public function UpdateCharacterSkillPoints(newAmount:Number);

	private function GetIconName(itemIndex:Number) : String;

	public function SetIcon(value:String) : Void;

	public function SetLabel(value:String) : Void;

	public function SetTopLineVisibility(value:Boolean) : Void;

}
import com.GameInterface.SkillWheel.Cell;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.Game.Character;
import com.Utils.Signal;
import GUI.SkillHive.SkillHiveDrawHelper;
import flash.filters.GlowFilter;
import mx.utils.Delegate;
intrinsic class GUI.SkillHive.CellClip extends MovieClip
{
	private var CELL_COLOR_RANGED : Number;
	private var CELL_COLOR_RANGED_PROGRESS : Number;
	private var CELL_COLOR_RANGED_FULL : Number;
	private var CELL_COLOR_MELEE : Number;
	private var CELL_COLOR_MELEE_PROGRESS : Number;
	private var CELL_COLOR_MELEE_FULL : Number;
	private var CELL_COLOR_MAGIC : Number;
	private var CELL_COLOR_MAGIC_PROGRESS : Number;
	private var CELL_COLOR_MAGIC_FULL : Number;
	private var CELL_COLOR_MISC : Number;
	private var CELL_COLOR_MISC_PROGRESS : Number;
	private var CELL_COLOR_MISC_FULL : Number;
	private var CELL_COLOR_AUXILLIARY : Number;
	private var CELL_COLOR_AUXILLIARY_PROGRESS : Number;
	private var CELL_COLOR_AUXILLIARY_FULL : Number;
	private var CELL_COLOR_AUG_DAMAGE : Number;
	private var CELL_COLOR_AUG_DAMAGE_PROGRESS : Number;
	private var CELL_COLOR_AUG_DAMAGE_FULL : Number;
	private var CELL_COLOR_AUG_SUPPORT : Number;
	private var CELL_COLOR_AUG_SUPPORT_PROGRESS : Number;
	private var CELL_COLOR_AUG_SUPPORT_FULL : Number;
	private var CELL_COLOR_AUG_HEALING : Number;
	private var CELL_COLOR_AUG_HEALING_PROGRESS : Number;
	private var CELL_COLOR_AUG_HEALING_FULL : Number;
	private var CELL_COLOR_AUG_SURVIVABILITY : Number;
	private var CELL_COLOR_AUG_SURVIVABILITY_PROGRESS : Number;
	private var CELL_COLOR_AUG_SURVIVABILITY_FULL : Number;
	private var m_EmptyColor : Number;
	private var m_ProgressColor : Number;
	private var m_FullColor : Number;
	private var m_Cell : Cell;
	public var m_Angle : Number;
	public var m_Radius : Number;
	public var m_StartAngle : Number;
	public var m_Thickness : Number;
	private var m_Selected : Boolean;
	private var m_Hovered : Boolean;
	public var SignalClick : Signal;
	public var SignalRollOver : Signal;
	public var SignalRollOut : Signal;
	private var m_CompletionClip : MovieClip;
	private var m_IntervalID : Number;
	public var m_Glow : GlowFilter;

	public function CellClip();

	private function onUnload() : Void;

	public function Draw();

	private function CheckMouseOver();

	public function onPress();

	public function onRollOverClip();

	public function onRollOutClip();

	public function onDragOut();

	public function SetCell(cell:Cell);

	public function GetCell() : Cell;

	private function IsLocked() : Boolean;

	public function SetSelected(selected:Boolean);

	public function IsSelected();

	public function SetHovered(hovered:Boolean);

	private function UpdateDrawState();

	public function UpdateColors();

	public function GetID();

	public function GetParentClusterID();

}
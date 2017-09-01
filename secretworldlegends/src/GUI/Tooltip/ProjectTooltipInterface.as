import com.GameInterface.Utils;
import com.GameInterface.Tooltip.TooltipData;
import GUIFramework.SFClipLoader;
import GUI.Tooltip.TooltipPanel;
import com.GameInterface.GUIModuleIF;
import com.GameInterface.Game.Character;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.Tooltip.ProjectTooltipInterface extends com.GameInterface.Tooltip.TooltipInterface
{
	private var m_TooltipWidth : Number;
	private var m_TooltipContainer : MovieClip;
	private var m_Destructor : com.Utils.Destructor;
	private var m_IsClosing : Boolean;

	public function ProjectTooltipInterface(orientation:Number, tooltipDataArray:Array);

	private function SlotCharacterEnteredReticuleMode();

	public function Close();

	public function MakeFloating();

	public function IsDoneLoading() : Boolean;

	public function GetPanelCount() : Number;

	public function GetSize() : flash.geom.Point;

	public function GetPanelSize(index:Number) : flash.geom.Point;

	public function SetGlobalPosition(pos:flash.geom.Point) : Void;

	private function SetPanelPosition(index:Number, pos:flash.geom.Point) : Void;

	public function SetTooltipContainer(tooltipContainer:MovieClip) : Void;

	private function SlotPanelSizeChanged() : Void;

	private function DoMakeFloating() : Void;

}
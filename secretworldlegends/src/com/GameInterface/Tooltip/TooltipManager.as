import flash.external.*;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import gfx.managers.PopUpManager;
import gfx.managers.DragManager;
import com.GameInterface.Utils;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipInterface;
import GUI.Tooltip.ProjectTooltipInterface;
import GUIFramework.SFClipLoader;
import GUIFramework.ClipNode;
intrinsic class com.GameInterface.Tooltip.TooltipManager
{
	static private var m_instance : TooltipManager;
	static private var m_WindowIndex : Number;

	static public function GetInstance() : TooltipManager;

	public function TooltipManager();

	public function ShowTooltip(targetClip:MovieClip, orientation:Number, delay:Number, tooltipData:TooltipData) : TooltipInterface;

}
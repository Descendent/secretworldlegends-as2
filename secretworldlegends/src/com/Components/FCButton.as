import gfx.controls.Button;
import mx.utils.Delegate;
import com.GameInterface.Tooltip.TooltipManager;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.DistributedValue;
intrinsic class com.Components.FCButton extends Button
{
	private var m_TooltipText : String;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipTimeout : Number;
	private var m_MaxWidth : Number;

	public function FCButton();

	private function handleMouseRollOver(controllerIdx:Number) : Void;

	private function handleMouseRollOut(controllerIdx:Number) : Void;

	private function handleDragOver(controllerIdx:Number, button:Number) : Void;

	private function handleDragOut(controllerIdx:Number, button:Number) : Void;

	private function onMousePress(mouseBtnId:Number);

	private function StartTooltipTimout();

	private function StopTooltipTimout();

	private function OpenTooltip();

	public function CloseTooltip();

	public function SetTooltipText(tooltip:String);

	public function SetTooltipMaxWidth(maxWidth:Number);

}
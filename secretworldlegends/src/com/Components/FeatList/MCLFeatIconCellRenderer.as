import com.Components.MultiColumnList.MCLBaseCellRenderer;
import com.GameInterface.FeatData;
import com.GameInterface.Utils;
import com.Utils.ID32;
import com.Utils.Colors;
import com.Utils.Signal;
import com.GameInterface.Tooltip.*;
import mx.utils.Delegate;
import com.GameInterface.DistributedValue;
intrinsic class com.Components.FeatList.MCLFeatIconCellRenderer extends MCLBaseCellRenderer
{
	private var m_Icon : MovieClip;
	private var m_FeatData : FeatData;
	private var m_Tooltip : TooltipInterface;
	private var m_ResourceIconMonitor : DistributedValue;
	public var SignalMouseDown : Signal;
	public var SignalMouseUp : Signal;

	public function MCLFeatIconCellRenderer(parent:MovieClip, id:Number, featData:FeatData, showSymbol:Boolean);

	public function UpdateResourceIcons();

	public function SlotUnload();

	public function SlotMouseUp(buttonIndex:Number);

	public function SlotMouseDown(buttonIndex:Number);

	public function SetSize(width:Number, height:Number);

	public function GetDesiredWidth() : Number;

	public function Remove();

	private function SlotMouseMove();

	public function OpenTooltip() : Void;

	public function CloseTooltip() : Void;

	public function SetPos(x:Number, y:Number);

}
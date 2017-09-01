import com.Components.MultiColumnList.MCLBaseCellRenderer;
import com.Components.MultiColumnList.MCLItemRenderer;
intrinsic class com.Components.FeatList.MCLFeatCostCellRenderer extends MCLBaseCellRenderer
{
	public function MCLFeatCostCellRenderer(parent:MCLItemRenderer, id:Number, cost:Number);

	public function SetPos(x:Number, y:Number);

	public function SetSize(width:Number, height:Number);

	public function GetDesiredWidth() : Number;

}
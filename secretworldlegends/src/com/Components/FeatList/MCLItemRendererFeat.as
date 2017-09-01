import com.Components.MultiColumnList.MCLItemRenderer;
import com.Components.MultiColumnList.MCLBaseCellRenderer;
import com.Components.MultiColumnList.MCLItem;
import com.Components.MultiColumnList.MCLItemValueData;
import com.Components.FeatList.MCLItemFeat;
import com.Components.FeatList.MCLFeatCostCellRenderer;
import com.Components.FeatList.MCLFeatTypeCellRenderer;
import com.Components.FeatList.MCLFeatIconCellRenderer;
import com.Components.MultiColumnListView;
import com.GameInterface.FeatData;
intrinsic class com.Components.FeatList.MCLItemRendererFeat extends MCLItemRenderer
{
	public function MCLItemRendererFeat();

	public function SetData(listView:MultiColumnListView, data:MCLItem);

	private function SlotIconMouseUp(buttonindex:Number);

	private function SlotIconMouseDown(buttonindex:Number);

	private function CreateIconRenderer(id:Number, width:Number, featData:FeatData, addSymbol:Boolean) : MCLBaseCellRenderer;

	private function CreateTypeRenderer(id:Number, width:Number, weaponName:String, weaponRequirement:Number) : MCLBaseCellRenderer;

	private function CreateCostRenderer(id:Number, width:Number, featCost:Number) : MCLBaseCellRenderer;

}
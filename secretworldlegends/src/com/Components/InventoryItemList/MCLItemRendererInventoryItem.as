import com.Components.InventoryItemList.MCLItemIconCellRenderer;
import com.Components.InventoryItemList.MCLItemPriceCellRenderer;
import com.Components.InventoryItemList.MCLItemInventoryItem;
import com.Components.MultiColumnList.MCLBaseCellRenderer;
import com.Components.MultiColumnList.MCLItemValueData;
import com.Components.MultiColumnList.MCLItem;
import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.MCLItemRenderer;
import com.Utils.ID32;
import com.GameInterface.Game.Character;
import com.GameInterface.InventoryItem;
intrinsic class com.Components.InventoryItemList.MCLItemRendererInventoryItem extends MCLItemRenderer
{
	public var m_IconRenderer : MCLItemIconCellRenderer;

	public function MCLItemRendererInventoryItem();

	public function SetSelected(selected:Boolean);

	public function SetData(listView:MultiColumnListView, data:MCLItem);

	private function CreateIconRenderer(id:Number, width:Number) : MCLItemIconCellRenderer;

	private function CreatePriceRenderer(id:Number, width:Number, type1:Number, price1:Number, type2:Number, price2:Number, priceColor1:Number, priceColor2:Number) : MCLBaseCellRenderer;

	public function Clear();

	public function UpdateLayout(listView:MultiColumnListView);

}
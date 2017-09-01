import com.GameInterface.InventoryItem;
import com.Components.ItemComponent;
import com.GameInterface.Tooltip.*;
import com.Utils.ID32;
import mx.utils.Delegate;
intrinsic class com.Components.InventoryItemList.MCLItemIconCellRenderer extends com.Components.MultiColumnList.MCLBaseCellRenderer
{
	private var m_Icon : ItemComponent;
	private var m_Tooltip : TooltipInterface;
	private var m_InventoryItem : InventoryItem;
	private var m_InventoryId : ID32;

	public function MCLItemIconCellRenderer(parent:MovieClip, id:Number);

	public function SlotUnload();

	public function SetInventoryItem(inventoryId:ID32, inventoryItem:InventoryItem);

	public function SetVisible(visible:Boolean);

	public function SetSize(width:Number, height:Number);

	public function GetDesiredWidth() : Number;

	public function Remove();

	private function SlotMouseMove();

	public function SetAlpha(alpha:Number);

	public function OpenTooltip() : Void;

	public function CloseTooltip() : Void;

	public function SetPos(x:Number, y:Number);

}
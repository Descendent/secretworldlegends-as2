import com.GameInterface.InventoryItem;
import com.Utils.ID32;
import com.Components.MultiColumnList.MCLItem;
intrinsic class com.Components.InventoryItemList.MCLItemInventoryItem extends MCLItem
{
	static public var INVENTORY_ITEM_COLUMN_ICON : Object;
	static public var INVENTORY_ITEM_COLUMN_NAME : Object;
	static public var INVENTORY_ITEM_COLUMN_BUY_PRICE : Object;
	static public var INVENTORY_ITEM_COLUMN_SELL_PRICE : Object;
	static public var INVENTORY_ITEM_COLUMN_REPAIR_PRICE : Object;
	static public var INVENTORY_ITEM_COLUMN_RANK : Object;
	static public var INVENTORY_ITEM_COLUMN_SELLER : Object;
	static public var INVENTORY_ITEM_COLUMN_EXPIRES : Object;
	static public var INVENTORY_ITEM_COLUMN_RECURRENT : Object;
	static public var INVENTORY_ITEM_COLUMN_ORIGIN : Object;
	public var m_InventoryItem : InventoryItem;
	public var m_InventoryId : ID32;
	public var m_Seller : String;
	public var m_Expires : String;
	public var m_Recurrent : Boolean;
	public var m_Origin : String;

	public function MCLItemInventoryItem(inventoryItem:InventoryItem, inventoryId:ID32);

	public function Compare(sortColumn:Number, item:MCLItem);

	public function CompareSellPrice(item1:InventoryItem, item2:InventoryItem);

	public function CompareBuyPrice(item1:InventoryItem, item2:InventoryItem);

	public function CompareItems(item1:InventoryItem, item2:InventoryItem) : Number;

}
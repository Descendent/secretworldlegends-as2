import com.Utils.ID32;
import com.Utils.Signal;
import com.GameInterface.InventoryItem;
intrinsic class com.GameInterface.InventoryBase
{
	public var m_Items : Array;
	public var SignalItemLoaded : Signal;
	public var SignalItemAdded : Signal;
	public var SignalItemMoved : Signal;
	public var SignalItemRemoved : Signal;
	public var SignalItemChanged : Object;
	public var SignalItemStatChanged : Object;
	public var SignalInventoryExpanded : Object;
	public var SignalItemCooldown : Object;
	public var SignalItemCooldownRemoved : Object;

	public function get m_InventoryID() : ID32;


	public function InventoryBase(invID:ID32);

	public function AddItem(srcInvID:com.Utils.ID32, srcPos:Number, dstPos:Number) : Number;

	public function PreviewItem(itemPos:Number) : Void;

	public function PreviewCharacter(characterID:ID32) : Boolean;

	public function DeleteItem(itemPos:Number) : Void;

	public function UseItem(itemPos:Number) : Void;

	public function CanAddItemToShortcuts(itemPos:Number) : Boolean;

	public function SplitItem(srcInvID:com.Utils.ID32, srcPos:Number, dstPos:Number, split:Number) : Boolean;

	public function MakeItemLink(itemPos:Number) : Void;

	public function GetFirstFreeItemSlot() : Number;

	public function GetMaxItems() : Number;

	public function GetInventoryID() : ID32;

	public function IsInitialized() : Boolean;

	private function CreateItem() : Void;

	static public function GetItemXPForLevel(itemType:Number, itemRank:Number, itemLevel:Number) : Number;

	static public function CreateACGItemFromTemplate(id1:Number, id2:Number, id3:Number, itemLevel:Number) : InventoryItem;

}
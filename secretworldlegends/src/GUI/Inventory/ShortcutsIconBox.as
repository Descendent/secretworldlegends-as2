import com.GameInterface.Game.Shortcut;
import com.GameInterface.Game.ShortcutData;
import com.GameInterface.Game.Character;
import com.GameInterface.InventoryItem;
import com.GameInterface.Inventory;
import com.GameInterface.ProjectUtils;
import com.Components.ItemSlot;
import com.Utils.ID32;
import com.Utils.Signal;
import flash.geom.Point;
import GUI.Inventory.ItemIconBox;
import mx.data.encoders.Num;
intrinsic class GUI.Inventory.ShortcutsIconBox extends ItemIconBox
{
	static public var MAX_POCKET_SIZE : Number;
	static private var START_SLOT_POCKET : String;
	public var SignalUpdateInventoryLabelAndAnimation : Signal;
	public var SignalAnimateInventoryShortcut : Signal;
	private var m_ShortcutSlotsArray : Array;
	private var m_StartSlot : Number;
	private var m_Slots : Array;
	private var m_ClientInventory : Inventory;

	public function ShortcutsIconBox(boxId:Number, inventoryId:ID32, windowMC:MovieClip, numRows:Number, numColumns:Number, isDefaultBox:Boolean, isNew:Boolean, isShortcutsBox:Boolean);

	private function Init() : Void;

	private function SlotItemLoaded();

	private function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean);

	private function SlotHotkeyChanged(hotkeyID:Number) : Void;

	private function GetHotkeyLabel(index:Number) : String;

	public function CreateSlot(gridPosition:Point, slotID:Number, itemData:InventoryItem, x:Number, y:Number);

	public function ItemHasShortcut(inventoryId:ID32, inventoryPosition:Number) : Boolean;

	public function GetShortcutSlotAtIndex(shortcutsSlotIndex:Number) : ItemSlot;

	public function UpdateItemLabelAndAnimation(shortcutSlotIndex:Number) : Void;

	public function CreateEmptySlot(gridPosition:Point, slotID:Number);

	public function AddItemAt(slotID:Number, itemData:InventoryItem, dstX:Number, dstY:Number);

	public function AddItem(slotID:Number, itemData:InventoryItem);

	public function AddItemToExistingSlot(slotID:Number, itemData:Object);

	public function AddItemAtGridPosition(slotID:Number, itemData:InventoryItem, gridPosition:Point);

	public function RemoveItem(itemID:Number) : Boolean;

	public function UseShortcut(position:Number) : Void;

	public function AddShortcut(srcInventoryID:ID32, srcInventorySlot:Number, gridPosition:Point) : Void;

	public function MoveShortcut(from:Number, to:Number) : Void;

	public function RemoveShortcut(position:Number) : Void;

	private function IsItemShortcut(itemPos:Number) : Boolean;

	private function SlotCooldownTime(itemPos:Number, cooldownStart:Number, cooldownEnd:Number, cooldownFlags:Number) : Void;

	public function SetCooldownInventoryItem(inventoryPos:Number, time:Number);

	public function SetCooldown(slotID:Number, seconds:Number);

	public function RemoveCooldown(slotID:Number);

	public function ShortcutsRefresh() : Void;

	private function SlotShortcutAdded(itemPos:Number) : Void;

	private function SlotShortcutMoved(p_from:Number, p_to:Number) : Void;

	private function SlotSwapShortcut(itemPos:Number, templateID:Number) : Void;

	public function RemoveAllShortcuts() : Void;

	private function SlotShortcutRemoved(itemPos:Number) : Void;

	private function SlotShortcutStatChanged(itemPos:Number, stat:Number, value:Number) : Void;

	public function GetItemSlot(itemID:Number) : ItemSlot;

	public function CloseAllTooltips();

	private function SlotShortcutUsed(itemPos:Number) : Void;

	private function SlotStartSplitItem(itemSlot:ItemSlot);

}
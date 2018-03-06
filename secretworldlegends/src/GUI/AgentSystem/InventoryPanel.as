import gfx.core.UIComponent;
import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.Utils.DragObject;
import com.Utils.Signal;
import com.Components.ItemSlot;
import com.GameInterface.Inventory;
import com.GameInterface.Game.Character;
import com.GameInterface.DialogIF;
import com.GameInterface.AgentSystem;
intrinsic class GUI.AgentSystem.InventoryPanel extends UIComponent
{
	private var m_Inventory : Inventory;
	private var m_ItemSlots : Array;
	private var m_CurrentDialog : DialogIF;
	static private var NUM_ROWS : Number;
	static private var NUM_COLUMNS : Number;
	static private var Y_OFFSET : Number;
	public var SignalItemRightClicked : Signal;

	public function InventoryPanel();

	private function configUI();

	private function SetupSlots();

	private function UpdateItems();

	private function SlotMouseUpEmptySlot(itemSlot:ItemSlot, buttonIndex:Number) : Void;

	private function SlotMouseUpItem(itemSlot:ItemSlot, buttonIndex:Number) : Void;

	private function onDragBegin(item:ItemSlot, stackSize:Number) : Void;

	private function onDragEnd(event:Object) : Void;

	private function SlotDragHandled();

	public function TryMoveItem(srcInvId:ID32, srcInvSlot:Number, targetSlot:Number, isSplit:Boolean, splitSize:Number);

	private function SlotItemDroppedOnDesktop() : Void;

	private function DeleteItem(itemSlot:Number) : Void;

	private function SlotDeleteItemDialog(buttonID:Number, itemSlotID:Number);

	public function SlotItemAdded(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

	public function SlotItemMoved(inventoryID:com.Utils.ID32, fromPos:Number, toPos:Number) : Void;

	public function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean) : Void;

	public function SlotItemStatChanged(inventoryID:com.Utils.ID32, itemPos:Number, stat:Number, newValue:Number) : Void;

	public function SlotItemCooldown(inventoryID:com.Utils.ID32, itemPos:Number, seconds:Number);

	public function SlotItemCooldownRemoved(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotItemChanged(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

	private function GetTargetSlot() : Number;

}
import flash.geom.Rectangle;
import GUI.Inventory.IconBox;
import mx.utils.Delegate;
import com.Utils.Signal;
import com.Utils.ID32;
import com.Utils.LDBFormat;
import com.Components.ItemSlot;
import flash.geom.Point;
import com.Utils.Rect;
import com.GameInterface.InventoryItem;
import com.GameInterface.Log;
import com.Components.SearchBox;
import com.GameInterface.DialogIF;
import com.GameInterface.LoreBase;
intrinsic class GUI.Inventory.ItemIconBox extends IconBox
{
	private var m_IsDefaultBox : Boolean;
	private var m_IsResizing : Boolean;
	private var m_IsResizable : Boolean;
	private var m_IsScrollbarEnabled : Boolean;
	private var m_MaxItems : Number;
	private var m_SearchBox : SearchBox;
	public var m_CurrentDialog : DialogIF;
	public var SignalNewButtonPressed : Signal;
	public var SignalCloseButtonPressed : Signal;
	public var SignalTrashButtonPressed : Signal;
	public var SignalSearch : Signal;
	public var SignalBuySlots : Signal;
	public var SignalMerge : Signal;
	public var SignalStackItems : Signal;

	public function ItemIconBox(boxId:Number, inventoryId:ID32, windowMC:MovieClip, numRows:Number, numColumns:Number, isDefaultBox:Boolean, isQuestBox, isNew:Boolean, isShortcutsBox:Boolean);

	public function UpdateBuySlotsButton();

	public function SetNumTotalItems(numItems:Number, numMaxItems:Number);

	private function SlotSearchText(event:Object);

	private function SlotCloseButtonPressed();

	private function SlotBuySlots();

	private function SlotBuySlotsAnswer(buttonID:Number);

	private function UpdateBoxContents(width:Number, height:Number);

	private function SetWindowHasFullVisibility(fullVisibility:Boolean);

	public function ResizeBoxTo(numRows:Number, numColumns:Number, isDefaultBox:Boolean);

	private function SlotResizePress();

	private function SlotResizeRelease();

	private function SlotResizeMove();

	private function SlotHelpButtonPressed() : Void;

	private function SlotNewPress();

	private function SlotTrashPress();

	public function AddItemAtGridPosition(slotID:Number, itemData:InventoryItem, gridPosition:Point);

	public function RemoveItem(itemID:Number) : Boolean;

	public function ClearItem(itemID:Number) : Boolean;

	public function CreateSlot(gridPosition:Point, slotID:Number, itemData:InventoryItem, x:Number, y:Number);

	public function CreateEmptySlot(gridPosition:Point, slotID:Number);

	public function CreateScrollbar();

	private function SlotDeleteItem(itemSlot:ItemSlot);

	private function SlotMouseDownItem(itemSlot:ItemSlot, buttonIndex:Number, clickCount:Number);

	private function SlotMouseUpItem(itemSlot:ItemSlot, buttonIndex:Number);

	private function SlotStartDragItem(itemSlot:ItemSlot, stackSize:Number);

	private function SlotStartSplitItem(itemSlot:ItemSlot);

	public function AddItemAt(slotID:Number, itemData:InventoryItem, dstX:Number, dstY:Number);

	public function AddItem(slotID:Number, itemData:InventoryItem);

	public function AddItemToExistingSlot(slotID:Number, itemData:Object);

	public function MergeInto(otherBox:ItemIconBox);

	public function GetItemSlot(itemID:Number) : ItemSlot;

	public function GetItemData(itemID:Number);

	public function GetSlotBindings() : Array;

	public function CloseAllTooltips();

	public function UpdateFilteredItems();

	public function SetCooldown(slotID:Number, seconds:Number);

	public function RemoveCooldown(slotID:Number);

	public function SetResizable(resizable:Boolean);

	public function SortBag();

	private function SortByRarity(a, b);

}
import gfx.core.UIComponent;
import com.GameInterface.Inventory;
import com.Components.BankItemSlot;
import com.GameInterface.Tradepost;
import com.GameInterface.Friends;
import com.GameInterface.ItemPrice;
import com.GameInterface.DialogIF;
import com.GameInterface.ProjectUtils;
import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Character;
import com.GameInterface.GUIModuleIF;
import com.Components.RightClickMenu;
import com.Components.RightClickItem;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.Utils.ID32;
import com.Utils.DragObject;
import flash.geom.Point;
import GUI.Bank.Views.StoreAndSellView;
intrinsic class GUI.Bank.BankContainer extends UIComponent
{
	static private var TITLE_MENU : String;
	public var SignalItemPressed : Signal;
	private var m_NumColums : Number;
	private var m_NumRows : Number;
	private var m_NumPages : Number;
	private var m_CurrentPage : Number;
	private var m_Inventory : Inventory;
	private var m_ItemSlotsArray : Array;
	private var m_ItemsContainer : MovieClip;
	private var m_ItemSlotTemplate : String;
	private var m_GridLines : MovieClip;
	private var m_RightClickMenu : MovieClip;
	private var m_SelectedBankSlotID : Number;
	private var m_CurrentDialog : DialogIF;
	private var m_SplitItemPopup : MovieClip;
	private var m_MovedCabalItem : Object;

	public function BankContainer();

	public function onLoad() : Void;

	public function onUnload();

	public function SetSize(colums:Number, rows:Number, pages:Number, currentPage:Number) : Void;

	public function SetItemSlotTemplate(value:String) : Void;

	private function DrawGrid() : Void;

	public function UpdateTotalItemsTextField();

	public function GotoPage(page:Number);

	public function SetInventory(inventory:Inventory) : Void;

	private function SlotMouseUpEmptySlot(bankItemSlot:BankItemSlot, buttonIndex:Number) : Void;

	private function SlotMouseUpItem(bankItemSlot:BankItemSlot, buttonIndex:Number) : Void;

	private function SlotStartSplitItem(itemSlot:BankItemSlot, stackSize:Number);

	private function SlotAcceptSplitItem(itemSlot:BankItemSlot, stackSplit:Number);

	private function SlotCancelSplitItem(slotID:Number);

	public function BuySlots() : Void;

	private function SlotAcceptBuySlots(buttonID:Number) : Void;

	public function GetItemPriceFromCash(cash:Number) : ItemPrice;

	public function SlotItemAdded(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

	public function SlotItemMoved(inventoryID:com.Utils.ID32, fromPos:Number, toPos:Number) : Void;

	public function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean) : Void;

	public function SlotItemStatChanged(inventoryID:com.Utils.ID32, itemPos:Number, stat:Number, newValue:Number) : Void;

	public function SlotItemCooldown(inventoryID:com.Utils.ID32, itemPos:Number, seconds:Number);

	public function SlotItemCooldownRemoved(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotItemChanged(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

	private function UpdateItems() : Void;

	private function DisableSlots() : Void;

	private function onDragBegin(item:BankItemSlot, stackSize:Number) : Void;

	private function onDragEnd(event:Object) : Void;

	public function SlotMoveItemToGuildBank(buttonID:Number);

	public function TryMoveItem(srcInvId:ID32, srcInvSlot:Number, targetSlot:Number, isSplit:Boolean, splitSize:Number);

	private function SlotItemDroppedOnDesktop() : Void;

	private function DeleteItem(itemSlot:Number) : Void;

	private function CanDeleteItem(itemSlot:Number) : Boolean;

	private function SlotDeleteItemDialog(buttonID:Number, itemSlotID:Number);

	private function SlotDragHandled();

	private function GetTargetSlot() : Number;

}
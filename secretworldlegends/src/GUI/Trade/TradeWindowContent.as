import com.GameInterface.Inventory;
import com.Utils.ID32;
import com.GameInterface.Game.Character;
import mx.utils.Delegate;
import com.GameInterface.Utils;
import com.Components.ItemSlot;
import com.Utils.LDBFormat;
import com.Utils.DragObject;
import com.Components.WindowComponentContent;
import gfx.controls.Button;
import GUI.Trade.ItemCounter;
intrinsic class GUI.Trade.TradeWindowContent extends WindowComponentContent
{
	public var m_ClientInventory : Inventory;
	public var m_PartnerInventory : Inventory;
	public var m_ClientCharacter : Character;
	public var m_ClientItemSlots : Array;
	public var m_PartnerItemSlots : Array;
	public var m_NumSlots : Number;
	public var m_HasAcceptedTrade : Boolean;
	public var m_IsClientSlotLit : Boolean;
	public var m_IconBoxHighlight : MovieClip;
	public var m_Background : MovieClip;
	public var m_AcceptButton : Button;
	public var m_AbortButton : Button;
	public var m_ClientSlots : MovieClip;
	public var m_PartnerSlots : MovieClip;
	public var m_ClientAccepted : MovieClip;
	public var m_PartnerAccepted : MovieClip;
	public var m_ClientName : TextField;
	public var m_PartnerName : TextField;

	public function TradeWindowContent();

	public function configUI();

	public function SlotReceiveItem(srcInventory:ID32, srcSlot:Number);

	public function SlotAcceptTrade();

	public function SlotAbortTrade();

	public function InitializeSlot(inventoryID:ID32, slotArray:Array, itemPos:Number, slotMC:MovieClip, supportDrag:Boolean);

	private function SlotMouseUpItem(itemSlot:ItemSlot, buttonIndex:Number);

	private function SlotStartDragItem(itemSlot:ItemSlot, stackSize:Number);

	public function SlotDragHandled();

	public function SetTradePartner(partnerID:ID32);

	public function SlotDragBegin(event:Object);

	public function SlotDragEnd(event:Object);

	public function onMouseMove();

	public function GetNextFreeSlot() : Number;

	public function ToggleClientSlotsHighlight(highlight:Boolean);

	public function SlotStartDragWindow();

	public function SlotStopDragWindow();

	public function SlotClientItemAdded(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotClientItemLoaded(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotClientItemMoved(inventoryID:com.Utils.ID32, fromPos:Number, toPos:Number);

	public function SlotClientItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean);

	public function SlotClientItemChanged(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotPartnerItemAdded(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotPartnerItemLoaded(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotPartnerItemMoved(inventoryID:com.Utils.ID32, fromPos:Number, toPos:Number);

	public function SlotPartnerItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean);

	public function SlotPartnerItemChanged(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotPartnerAccepted();

	public function SlotPartnerNoLongerAccepted();

	public function SlotClientAccepted();

	public function SlotClientNoLongerAccepted();

	public function ClearItems();

}
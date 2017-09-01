import com.GameInterface.Inventory;
import com.GameInterface.Game.Character;
import com.Utils.Signal;
import com.Utils.DragObject;
import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.Components.ItemSlot;
import flash.geom.Point;
import gfx.core.UIComponent;
intrinsic class GUI.Crafting.CraftingSkin extends UIComponent
{
	static public var STATE_EMPTY : Number;
	static public var STATE_CRAFTING_NOT_READY : Number;
	static public var STATE_CRAFTING_NEED_TOOL : Number;
	static public var STATE_CRAFTING_READY : Number;
	static public var STATE_DISASSEMBLE_NEED_TOOL : Number;
	static public var STATE_DISASSEMBLE_READY : Number;
	static public var STATE_CRAFTING_SCRIPT_FAILED : Number;
	static public var STATE_DISASSEMBLE_SCRIPT_FAILED : Number;
	private var m_ItemSlots : Array;
	private var m_NumRows : Number;
	private var m_NumColumns : Number;
	private var m_SlotPadding : Number;
	private var m_DisassemblySlotNumber : Number;
	private var m_ToolSlotNumber : Number;
	private var m_Inventory : Inventory;
	private var m_IsEmpty : Boolean;
	private var m_IsDisassembling : Boolean;
	private var m_IsCrafting : Boolean;
	public var SignalClose : Signal;
	public var SignalClear : Signal;
	public var SignalStartCraft : Signal;
	public var SignalStartDisassembly : Signal;
	public var SignalStartDrag : Signal;
	public var SignalStopDrag : Signal;
	private var m_SplitItemPopup : MovieClip;

	public function CraftingSkin();

	public function configUI();

	public function Unload();

	public function InitializeItemSlots();

	private function SlotStartDrag();

	private function SlotStopDrag();

	public function SlotClose();

	public function SlotClear();

	public function SetNumRows(numRows:Number);

	public function SetNumColumns(numColumns:Number);

	public function SetSlotPadding(slotPadding:Number);

	public function SetInventory(inventory:Inventory);

	public function SlotItemAdded(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotItemMoved(inventoryID:com.Utils.ID32, fromPos:Number, toPos:Number);

	public function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean);

	public function SlotItemChanged(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotItemStatChanged(inventoryID:com.Utils.ID32, itemPos:Number, stat:Number, newValue:Number);

	/**** DRAG AND DROP ****/
	public function onDragEnd(event:Object) : Void;

	public function GetMouseSlotID() : Number;

	public function SlotMouseUpEmptySlot(itemSlot:ItemSlot, buttonIdx:Number);

	public function SlotMouseUpItem(itemSlot:ItemSlot, buttonIndex:Number);

	public function SlotStartDragItem(itemSlot:ItemSlot, stackSize:Number);

	public function SlotDragHandled();

	public function SlotItemDroppedOnDesktop();

	public function SlotStartSplitItem(itemSlot:ItemSlot, stackSize:Number);

	public function SlotAcceptSplitItem(itemSlot:ItemSlot, stackSplit:Number);

	public function CloseSplitItemPopup();

	public function SlotCancelSplitItem(slotID:Number);

	public function SlotDeleteItem(itemSlot:ItemSlot) : Void;

	public function SlotDeleteItemDialog(buttonID:Number, itemSlotID:Number) : Void;

	/**** Skin functionality ****/
	public function CraftingResultFeedback(result:Number, numItems:Number, feedback:String, items:Array);

	public function SetState(newState:Number);

	public function ResetIfEmpty();

	public function ResetPreview();

}
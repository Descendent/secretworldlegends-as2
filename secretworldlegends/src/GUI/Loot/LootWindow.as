import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.Game.TeamInterface;
import com.GameInterface.Game.Team;
import com.GameInterface.Game.Raid;
import com.GameInterface.Game.GroupElement;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
import com.GameInterface.DialogIF;
import com.Components.ItemSlot;
import com.Components.RightClickMenu;
import com.Components.RightClickItem;
import com.Utils.ID32;
import com.GameInterface.Loot;
import com.GameInterface.NeedGreed;
import com.GameInterface.GUIUtils.Draw;
import mx.utils.Delegate;
import com.Utils.Signal;
import com.Utils.DragObject;
import com.Utils.LDBFormat;
intrinsic class GUI.Loot.LootWindow
{
	static private var ASSIGN_LABEL : String;
	static private var ASSIGN_ITEM_TO : String;
	static private var RIGHT_CLICK_MOUSE_OFFSET : Number;
	static private var m_Padding : Number;
	public var SignalLootWindowClosed : Signal;
	private var m_Inventory : Inventory;
	private var m_ItemSlots : Array;
	private var m_LootBagMC : MovieClip;
	private var m_LootbagBackground : MovieClip;
	private var m_CloseButton : MovieClip;
	private var m_RightClickMenu : MovieClip;
	private var m_NumLootItemsPerLine : Number;
	private var m_LootbagPadding : Number;
	private var m_LootItemsPadding : Number;
	private var m_RightClickSelectedItemSlot : ItemSlot;
	private var m_CharactersToLoot : Array;
	private var m_MasterLooterConfirmDialog : DialogIF;
	private var m_Client : Character;
	private var m_LootHelpText : MovieClip;
	private var m_NumRows : Number;
	private var m_IconSize : Number;
	public var m_ID : ID32;
	private var m_LootBag : com.GameInterface.Loot;
	private var STATE_DRAGGING : Object;
	private var m_MaxDragX : Object;
	private var m_MinDragX : Object;
	private var m_MaxDragY : Object;
	private var m_MinDragY : Object;

	public function LootWindow(id:com.Utils.ID32, mc:MovieClip);

	private function GetCharactersToLoot() : Array;

	private function AddTeamCharacters(characters:Array, team:Team) : Void;

	private function AddRow();

	public function SetInventory(inventory:Inventory);

	private function CreateRightClickMenu() : Void;

	public function SlotHideRightClickMenu() : Void;

	public function UpdateRightClickMenuItems() : Void;

	private function SlotShareLoot(selectedLabel:String) : Void;

	private function SlotConfirmShareLoot(buttonID:Number, charId:ID32) : Void;

	private function GetNumItems() : Number;

	private function DrawBackground();

	private function StartDragLootBag();

	private function HideRighClickMenu() : Void;

	private function PositionRightClickMenu() : Void;

	private function CheckPositionLimits() : Void;

	private function CorrectPostion() : Void;

	public function GetID();

	public function SetCenterPosition(x:Number, y:Number) : Void;

	public function AddItem(itemPos:Number, item:InventoryItem);

	private function StopDragLootBag();

	private function DragPositionCheck();

	private function onMouseOverButton();

	private function onMouseOutButton();

	private function IsSlotPersonalLoot(itemSlot:ItemSlot);

	public function SlotMouseDownItem(itemSlot:ItemSlot, buttonIndex:Number, clickCount:Number);

	private function LootItem(itemSlot:ItemSlot, characterID:ID32);

	private function SlotStartDragItem(itemSlot:ItemSlot, stackSize:Number);

	public function SlotDragHandled();

	public function GetItemSlot(slotId:Number) : ItemSlot;

	private function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean);

	private function ClearSlots();

	private function SlotChanged(lootBagID:ID32);

	private function SlotClose();

	public function CloseLootbag();

	public function DisconnectTooltip();

}
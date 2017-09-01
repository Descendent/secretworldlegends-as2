import gfx.core.UIComponent;
import gfx.controls.CheckBox;
import gfx.controls.Button;
import flash.filters.GlowFilter;
import com.Components.ItemSlot;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.Lore;
import com.GameInterface.GUIModuleIF;
import com.GameInterface.GearManager;
import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Character;
import com.GameInterface.Tooltip.TooltipUtils;
import com.Utils.DragObject;
import com.Utils.LDBFormat;
import com.Utils.ID32;
intrinsic class GUI.CharacterSheet.Equipment extends UIComponent
{
	private var m_PrimaryTitle : TextField;
	private var m_SecondaryTitle : TextField;
	private var icon_chakra_1 : MovieClip;
	private var icon_chakra_2 : MovieClip;
	private var icon_chakra_3 : MovieClip;
	private var icon_chakra_4 : MovieClip;
	private var icon_chakra_5 : MovieClip;
	private var icon_chakra_6 : MovieClip;
	private var icon_chakra_7 : MovieClip;
	private var icon_gadget : MovieClip;
	private var icon_firstweapon : MovieClip;
	private var icon_secondweapon : MovieClip;
	private var m_PrimaryCheckbox : CheckBox;
	private var m_SecondaryCheckbox : CheckBox;
	private var m_UpgradeButton : Button;
	private var m_Inventory : Inventory;
	private var m_ItemSlots : Object;
	private var m_WeaponSlots : Array;
	private var m_Character : Character;
	private var m_GlowFilter : GlowFilter;
	static private var AUXILIARY_SLOT_ACHIEVEMENT : Number;
	static private var AUXILIARY_WEAPON_SLOT : Number;

	public function Equipment();

	public function configUI() : Void;

	public function SlotUpgradeClicked();

	private function SetTalismanPanel() : Void;

	private function SetWeaponBox() : Void;

	public function UpdateShownWeapons();

	private function InitializeSlot(itemPos:Number, icon:MovieClip) : Void;

	private function SlotItemAdded(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

	private function SlotItemLoaded(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

	private function SlotItemMoved(inventoryID:com.Utils.ID32, fromPos:Number, toPos:Number) : Void;

	private function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean) : Void;

	private function SlotItemChanged(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

	private function SlotItemStatChanged(inventoryID:com.Utils.ID32, itemPos:Number, stat:Number, newValue:Number);

	private function SlotStartDragItem(itemSlot:ItemSlot, stackSize:Number);

	private function SlotItemDroppedOnDesktop();

	private function SlotDragHandled();

	private function SlotMouseDownItem(itemSlot:ItemSlot, buttonIndex:Number, clickCount:Number);

	private function SlotMouseUpItem(itemSlot:ItemSlot, buttonIndex:Number);

	private function onDragEnd(event:Object) : Void;

	private function onDragBegin(event:Object) : Void;

	private function HighLightSlot(slot:MovieClip, highlight:Boolean) : Void;

	private function UnHighLightAll() : Void;

	private function GetMouseSlotID() : Number;

	private function SlotDeleteItem(itemSlot:ItemSlot) : Void;

	private function SlotDeleteItemDialog(buttonID:Number, itemSlotID:Number) : Void;

}
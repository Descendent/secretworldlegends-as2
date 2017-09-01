import com.GameInterface.LoreBase;
import com.GameInterface.InventoryItem;
import com.GameInterface.Game.Character;
import GUI.Crafting.CraftingSkin;
import com.Components.ItemSlot;
import com.Components.FCButton;
import com.Utils.ID32;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import mx.transitions.easing.Strong;
import gfx.controls.Button;
intrinsic class GUI.Crafting.ItemUpgradeSkin extends CraftingSkin
{
	private var m_Title : TextField;
	private var m_DirectionsText : TextField;
	private var m_Background : MovieClip;
	private var m_CloseButton : Button;
	private var m_HelpButton : Button;
	private var m_AssembleButton : Button;
	private var m_ClearButton : FCButton;
	private var m_TargetSlot : MovieClip;
	private var m_UpgradeSlot : MovieClip;
	private var m_ResultSlot : MovieClip;
	private var m_TargetBG : MovieClip;
	private var m_UpgradeBG : MovieClip;
	private var m_ResultBG : MovieClip;
	private var m_TargetFrame : MovieClip;
	private var m_UpgradeFrame : MovieClip;
	private var m_ResultFrame : MovieClip;
	private var m_TargetUpgradeLink : MovieClip;
	private var m_UpgradeResultLink : MovieClip;
	private var m_TargetSlotTextInfo : TextField;
	private var m_UpgradeSlotTextInfo : TextField;
	private var m_ResultSlotTextInfo : TextField;
	private var m_LevelUpgrade : MovieClip;
	private var m_UpgradeProgress : MovieClip;
	private var m_PercentChanceText : TextField;
	private var m_TargetEmptyText : TextField;
	private var m_IsCrafting : Boolean;
	private var m_UpgradeSlotEnabled : Boolean;
	private var m_AssembleText : String;
	private var m_TargetSlotIndex : Number;
	private var m_UpgradeSlotIndex : Number;
	private var m_ResultSlotIndex : Number;
	private var DISABLED_SLOT_ALPHA : Object;

	public function ItemUpgradeSkin();

	public function configUI();

	public function SlotReceiveItem(srcInventory:ID32, srcSlot:Number);

	public function SlotClear();

	public function SlotClose();

	public function SlotHelp() : Void;

	public function SlotStartCrafting();

	public function InitializeItemSlots();

	private function UpdateUpgradeSlotItemInfo(item:InventoryItem);

	private function UpdateTargetSlotItemInfo(item:InventoryItem);

	private function UpdateResultSlotItemInfo(item:InventoryItem);

	private function UpdateStep();

	public function onDragEnd(event:Object) : Void;

	public function SlotItemAdded(inventoryId:ID32, itemPos:Number);

	public function SlotItemMoved(inventoryID:ID32, fromPos:Number, toPos:Number);

	public function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean);

	public function SlotItemChanged(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotItemStatChanged(inventoryID:com.Utils.ID32, itemPos:Number, stat:Number, newValue:Number);

	public function CraftingResultFeedback(result:Number, numItems:Number, feedback:String, items:Array, percentChance:Number);

	public function SetResultDisplay(item:InventoryItem, chance:Number);

	public function ClearResultDisplay();

	public function SetState(newState:Number);

}
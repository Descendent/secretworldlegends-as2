import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import com.Utils.DragObject;
import com.Utils.ID32;
import com.Utils.Colors;
import com.Utils.Text;
import com.GameInterface.Utils;
import mx.utils.Delegate;
import gfx.controls.Button;
import com.Components.ItemSlot;
import com.GameInterface.Lore;
import com.GameInterface.Game.Character;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.CraftingInterface;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.GameInterface.GUIModuleIF;
import com.GameInterface.ShopInterface;
import com.GameInterface.DialogIF;
intrinsic class GUI.ItemUpgrade.ItemUpgradeContent extends WindowComponentContent
{
	private var m_TargetSlot : MovieClip;
	private var m_StatsHeader : MovieClip;
	private var m_LevelUpgrade : MovieClip;
	private var m_GlyphLevelUpgrade : MovieClip;
	private var m_SignetLevelUpgrade : MovieClip;
	private var m_UpgradeProgress : MovieClip;
	private var m_GlyphUpgradeProgress : MovieClip;
	private var m_SignetUpgradeProgress : MovieClip;
	private var m_TargetBG : MovieClip;
	private var m_StatChangeBG : MovieClip;
	private var m_StatChangeIcon : MovieClip;
	private var m_EmpowermentTab : MovieClip;
	private var m_FusionTab : MovieClip;
	private var m_DestroyGlyphButton : Button;
	private var m_RecoverGlyphButton : Button;
	private var m_DestroySignetButton : Button;
	private var m_RecoverSignetButton : Button;
	private var m_GlyphHeader : TextField;
	private var m_GlyphHeaderBG : MovieClip;
	private var m_SignetHeader : TextField;
	private var m_SignetHeaderBG : MovieClip;
	private var m_HelpText : TextField;
	private var m_RulesHeader : TextField;
	private var m_Inventory : Inventory;
	private var m_ItemSlots : Array;
	private var m_CurrentTab : Number;
	private var m_SlotPadding : Object;
	private var m_CurrentResult : InventoryItem;
	private var m_CurrentCost : Number;
	private var m_Character : Character;
	private var m_TutorialBlocker : MovieClip;
	private var m_ForcedInventory : Boolean;
	private var m_FromEquipped : Array;
	private var m_SlotStates : Array;
	private var m_ValidFeedback : Number;
	private var m_BonusFeedback : Number;
	private var m_FusionFeedback : Number;
	private var m_GlyphRecoveryCost : Number;
	private var m_SignetRecoveryCost : Number;
	private var EMPOWERMENT_TAB : Object;
	private var FUSION_TAB : Object;
	private var TARGET_SLOT : Number;
	private var FUSION_SLOT : Number;
	private var RESULT_SLOT : Number;
	private var EMPOWER_SLOT_0 : Number;
	private var EMPOWER_SLOT_1 : Number;
	private var EMPOWER_SLOT_2 : Number;
	private var EMPOWER_SLOT_3 : Number;
	private var EMPOWER_SLOT_4 : Number;
	private var FUSION_UNLOCK_TAG : Object;
	private var GLYPH_UNLOCK_TAG : Object;
	private var TUTORIAL_COMPLETE_TAG : Object;
	private var FUSION_TUTORIAL_COMPLETE_TAG : Object;
	private var GLYPH_TUTORIAL_COMPLETE_TAG : Object;
	private var LDB_ASSEMBLE : String;
	private var LDB_FUSE : String;

	public function ItemUpgradeContent();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function InitializeItemSlots();

	public function InitializeItemSlot(slotID:Number);

	public function SlotCraftingResultFeedback(result:Number, numItems:Number, feedback:String, items:Array, percentChance:Number, cost:Number, crit:Boolean, leveled:Boolean, stateArray:Array, validFeedback:Number, bonusFeedback:Number, fusionFeedback:Number, glyphRecoveryCost:Number, signetRecoveryCost:Number);

	private function UpdateRecoveryButton(button:Button, cost:Number, costMultiplier:Number);

	private function UpdateFeedback();

	private function UpdateSlotStates(stateArray);

	private function ClearSlotStates();

	private function SetCraftingCost(craftingButton:MovieClip, buttonLabel:String, cost:Number);

	private function UpdateResult();

	private function UpdateAssembleButton();

	private function SwitchToEmpowerment();

	private function SwitchToFusion();

	private function ShowTab(tabId:Number);

	private function UpdateStatsDisplay();

	private function ClearStatsDisplay();

	public function SlotStartEmpowerment();

	public function ConfirmEmpowerment() : Boolean;

	private function SlotEmpowerConfirmed(buttonId:Number);

	public function SlotStartFusion();

	public function ConfirmFusion() : Boolean;

	public function SlotFusionConfirmed(buttonId:Number);

	public function SlotDestroyGlyph();

	public function SlotRecoverGlyph();

	public function SlotDestroySignet();

	public function SlotRecoverSignet();

	public function SlotReceiveItem(srcInventory:ID32, srcSlot:Number);

	public function SlotItemAdded(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotItemMoved(inventoryID:com.Utils.ID32, fromPos:Number, toPos:Number);

	public function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean);

	public function SlotItemChanged(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotItemStatChanged(inventoryID:com.Utils.ID32, itemPos:Number, stat:Number, newValue:Number);

	public function SlotTagAdded(tagId:Number, characterId:ID32);

	public function SlotTokenChanged(tokenID:Number, newAmount:Number, oldAmount:Number);

	public function onDragEnd(event:Object) : Void;

	public function GetMouseSlotID() : Number;

	public function SlotMouseUpEmptySlot(itemSlot:ItemSlot, buttonIdx:Number);

	public function SlotMouseUpItem(itemSlot:ItemSlot, buttonIndex:Number);

	public function SlotStartDragItem(itemSlot:ItemSlot, stackSize:Number);

	public function SlotDragHandled();

	public function SlotItemDroppedOnDesktop();

	public function BuyFusionBoosters();

	private function RemoveFocus();

	private function onUnload();

}
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
intrinsic class GUI.Crafting.DefaultCraftingSkin extends CraftingSkin
{
	private var m_SlotContent : MovieClip;
	private var m_DisassemblySlot : MovieClip;
	private var m_Background : MovieClip;
	private var m_DissambleDoneFrame : MovieClip;
	private var m_AssembleDoneFrame : MovieClip;
	private var m_FeedbackFrame : MovieClip;
	private var m_ArrowDown : MovieClip;
	private var m_ArrowUp : MovieClip;
	private var m_CloseButton : Button;
	private var m_HelpButton : Button;
	private var m_AssembleButton : Button;
	private var m_ClearButton : FCButton;
	private var m_NoneButton : Button;
	private var m_PartsText : TextField;
	private var m_Title : TextField;
	private var m_DisassemblySlotTextInfo : TextField;
	private var m_DisassemblySlotTextHeadline : TextField;
	private var m_AssembleText : String;
	private var m_DisassembleText : String;
	private var m_HasTool : Boolean;

	public function DefaultCraftingSkin();

	public function configUI();

	public function SlotClear();

	public function SlotClose();

	public function SlotHelp() : Void;

	public function SlotStartCrafting();

	public function InitializeItemSlots();

	public function GetDisassemblySlot() : Number;

	public function SlotItemAdded(inventoryId:ID32, itemPos:Number);

	public function SlotItemMoved(inventoryID:ID32, fromPos:Number, toPos:Number);

	public function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean);

	public function SlotItemChanged(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotItemStatChanged(inventoryID:com.Utils.ID32, itemPos:Number, stat:Number, newValue:Number);

	public function UpdateDisassemblySlotItemInfo(item:InventoryItem);

	public function CraftingResultFeedback(result:Number, numItems:Number, feedback:String, items:Array);

	public function SetState(newState:Number);

}
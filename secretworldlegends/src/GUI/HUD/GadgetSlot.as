import gfx.core.UIComponent;
import mx.utils.Delegate;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.Game.Character;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.Utils.ID32;
intrinsic class GUI.HUD.GadgetSlot extends UIComponent
{
	private var m_Content : MovieClip;
	private var m_Gloss : MovieClip;
	private var m_GlossMask : MovieClip;
	private var m_CooldownLine : MovieClip;
	private var m_CooldownMask : MovieClip;
	private var m_BGMask : MovieClip;
	private var m_UseBG : MovieClip;
	private var m_NoUseBG : MovieClip;
	private var m_MovieClipLoader : MovieClipLoader;
	private var m_Inventory : Inventory;
	private var m_GadgetItem : InventoryItem;
	private var m_Icon : MovieClip;
	private var m_HasCooldown : Boolean;
	private var m_CooldownIntervalID : Number;
	private var m_TotalCooldownDuration : Number;
	private var m_CooldownExpireTime : Number;
	private var m_CooldownTimer : MovieClip;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipTimeout : Number;

	public function GadgetSlot();

	public function SetData(item:InventoryItem) : Void;

	private function ClearData() : Void;

	private function SetIcon(itemIcon:String) : Void;

	private function SetCooldown(cooldownEnd:Number, cooldownStart:Number);

	private function RemoveCooldown();

	private function onMouseDown();

	private function onMouseUp();

	private function onRollOver() : Void;

	private function onRollOut() : Void;

	private function onDragOut() : Void;

	private function StartTooltipTimeout();

	private function StopTooltipTimeout();

	public function OpenTooltip() : Void;

	public function CloseTooltip() : Void;

	private function UpdateTimer() : Void;

	private function SlotItemCooldown(inventoryID:com.Utils.ID32, itemPos:Number, seconds:Number) : Void;

	private function SlotItemCooldownRemoved(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

	private function SlotItemAdded(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

	private function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean) : Void;

	private function onUnload();

}
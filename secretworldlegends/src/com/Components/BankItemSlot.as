import mx.utils.Delegate;
import com.Components.ItemSlot;
import com.GameInterface.InventoryItem;
import com.GameInterface.Tradepost;
import com.GameInterface.ItemPrice;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.Utils.LDBFormat;
intrinsic class com.Components.BankItemSlot extends ItemSlot
{
	private var m_IsItemForSale : Boolean;
	private var m_Price : Number;
	private var m_AttachedToComposeMail : Boolean;
	private var m_IconsTooltip : TooltipInterface;
	private var m_CanReactOnNextMouseRelease : Boolean;

	public function BankItemSlot(inventoryID:com.Utils.ID32, slotID:Number, slotMC:MovieClip, iconTemplateName:String);

	public function SetData(newData:InventoryItem) : Void;

	public function onMouseRelease(buttonIdx:Number);

	public function CanReactOnNextMouseRelease(canAct:Boolean);

	public function OpenTooltip() : Void;

	public function SlotRollOverCash();

	public function SlotRollOverMail();

	public function SlotRollOutIcon();

	public function CloseTooltip() : Void;

	public function Clear() : Void;

}
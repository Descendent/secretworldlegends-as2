import com.Utils.Colors;
import mx.utils.Delegate;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import flash.geom.Point;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.Utils.ID32;
import com.Utils.Signal;
import com.GameInterface.Tooltip.*;
import com.Utils.DragObject;
import com.Components.ItemComponent;
import com.Utils.LDBFormat;
import com.GameInterface.DistributedValue;
import gfx.core.UIComponent;
intrinsic class com.Components.ItemSlot extends UIComponent
{
	private var m_ItemData : InventoryItem;
	private var m_SlotID : Number;
	private var m_InventoryID : ID32;
	private var m_SlotMC : MovieClip;
	private var m_SupportsFiltering : Boolean;
	private var m_ShowCanUse : Boolean;
	private var m_CanDrag : Boolean;
	private var m_IsACGItem : Boolean;
	private var m_Icon : MovieClip;
	private var m_HitPos : Point;
	public var m_WasHit : Boolean;
	public var m_DragType : String;
	public var m_IsDragging : Object;
	public var m_IconTemplateName : String;
	public var m_IconScale : Number;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipTimeout : Number;
	private var m_RightClickMenu : MovieClip;
	private var m_IsShortCutSlot : Boolean;
	public var SignalMouseDown : Signal;
	public var SignalMouseUp : Signal;
	public var SignalMouseDownEmptySlot : Signal;
	public var SignalMouseUpEmptySlot : Signal;
	public var SignalUse : Signal;
	public var SignalDelete : Signal;
	public var SignalStartDrag : Signal;
	public var SignalStartSplit : Signal;
	private var m_HasReactedOnMouseDown : Boolean;

	public function ItemSlot(inventoryID:com.Utils.ID32, slotID:Number, slotMC:MovieClip, iconTemplateName:String);

	public function setSlotID(inventoryID:com.Utils.ID32, slotID:Number);

	public function onMousePress(buttonIdx:Number, clickCount:Number);

	public function onMouseRelease(buttonIdx:Number);

	public function CloseRightClickMenu() : Void;

	public function SetFilteringSupport(isSupportingFilters:Boolean);

	public function EquipItemInBelt();

	public function EquipItem();

	public function DeleteItem();

	public function ExamineItem();

	public function UseItem();

	public function SetCanDrag(canDrag:Boolean);

	public function SetShowCanUse(show:Boolean);

	public function SetData(newData:InventoryItem);

	public function GetData() : InventoryItem;

	public function UpdateStackSize(itemData:InventoryItem);

	public function SetCooldown(cooldownEnd:Number, cooldownStart:Number);

	public function RemoveCooldown();

	private function OnMouseUp() : Void;

	private function OnMouseDown() : Void;

	public function HasItem() : Boolean;

	public function IsLocked() : Boolean;

	public function GetTooltipData() : TooltipData;

	private function StartTooltipTimeout();

	private function StopTooltipTimeout();

	public function OpenTooltip() : Void;

	public function CloseTooltip() : Void;

	private function OnMouseOver() : Void;

	private function OnMouseOut() : Void;

	private function OnDragOut() : Void;

	private function OnMouseMove() : Void;

	private function StartDraggingItem(stackSize:Number);

	private function StartSplittingItem();

	private function SlotItemDroppedOnDesktop();

	public function CreateIcon() : MovieClip;

	public function Clear() : Void;

	private function OnUnload() : Void;

	private function RemoveIcon() : Void;

	public function HitTest(mouseX:Number, mouseY:Number) : Boolean;

	public function UpdateFilter();

	public function GetSlotID() : Number;

	public function SetSlotID(newSlot:Number);

	public function GetSlotMC() : MovieClip;

	public function SetGlow(glow:Boolean);

	public function SetThrottle(throttle:Boolean);

	public function SetAlpha(alpha:Number);

	public function SetPos(x:Number, y:Number);

	public function SetDragItemType(dragType:String);

	public function GetDragItemType() : String;

	public function GetIcon() : MovieClip;

	public function GetIconTemplateName() : String;

	public function GetInventoryID() : ID32;

	public function GetHitPos() : Point;

	public function SetIsShortcutSlot(isShortcutSlot:Boolean) : Void;

}
import GUI.HUD.ActiveAbility;
import GUI.HUD.ActiveAbilitySlot;
import com.GameInterface.Game.Shortcut;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.Utils.DragObject;
import mx.core.UIComponent;
import com.Utils.Colors;
import GUI.HUD.AbilityBase;
import mx.utils.Delegate;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import flash.geom.Point;
intrinsic class GUI.HUD.AbilitySlot
{
	public var SWAP_ANIMATION_DURATION : Number;
	private var m_IsActive : Boolean;
	private var m_IconPath : String;
	private var m_HitPos : Point;
	private var m_IsBeingDragged : Boolean;
	public var m_ColorLine : Number;
	public var m_DisabledColor : Number;
	private var m_SlotMC : MovieClip;
	private var m_SlotId : Number;
	private var m_Icon : MovieClip;
	private var m_WasHit : Boolean;
	private var m_IsUnderMouse : Boolean;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipTimeout : Number;
	private var m_UseEffects : Boolean;
	private var m_ResourceGenerator : Number;
	public var m_Ability : AbilityBase;
	public var m_SwappedAbility : AbilityBase;
	public var m_Reflection : AbilityBase;
	public var m_Enabled : Boolean;
	public var m_RangedEnabled : Boolean;
	private var m_IsCooldown : Boolean;
	public var m_DragType : String;
	private var m_LinkageId : String;
	private var m_SpellType : Number;
	private var m_Id : Number;
	public var m_ShowAugments : Boolean;

	public function get Slot() : MovieClip;

	public function get Ability() : MovieClip;

	public function get IsActive() : Boolean;


	public function AbilitySlot(p_mc:MovieClip, p_id:Number);

	private function OnMouseUp() : Void;

	private function OnMouseDown() : Void;

	public function GetTooltipData();

	public function GetAugmentData();

	private function StartTooltipTimeout();

	private function StopTooltipTimeout();

	public function CloseTooltip() : Void;

	public function OpenTooltip() : Void;

	private function OnMouseOver() : Void;

	private function OnMouseOut() : Void;

	private function OnDragOut() : Void;

	private function OnUnload() : Void;

	private function OnMouseMove() : Void;

	public function SlotItemDroppedOnDesktop();

	public function SlotDragHandled();

	private function CanDragAbility() : Boolean;

	public function SetAbilityData(p_icon:String, p_ColorLine:Number, spellId:Number, spellType:Number, linkageId:String, useEffects:Boolean, resourceGenerator:Number) : Void;

	public function SwapAbilityData(p_icon:String, p_ColorLine:Number, spellId:Number, spellType:Number, linkageId:String, useEffects:Boolean, swapBackTime:Number, resourceGenerator) : Void;

	public function Clear() : Void;

	private function AddEffects(iconPath:String);

	private function RemoveEffects() : Void;

	private function UpdateAlpha() : Void;

	private function RemoveIcon() : Void;

	public function SetVisible(val:Boolean) : Void;

	public function GetSlotId() : Number;

	public function SwapEffect(duration:Number) : Void;

	public function SwapBackTimerEffect(swapBackTime:Number) : Void;

}
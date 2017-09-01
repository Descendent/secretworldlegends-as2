import com.Components.ResourceBase;
import com.GameInterface.Log;
import com.GameInterface.Game.Character;
import com.GameInterface.Resource;
import com.Components.WeaponResources.ResourceDataObject;
import com.GameInterface.Inventory;
import com.Utils.ID32;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipManager;
import com.GameInterface.Tooltip.TooltipInterface;
import com.Utils.LDBFormat;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import flash.geom.Point;
import gfx.core.UIComponent;
intrinsic class com.Components.Resources extends UIComponent
{
	private var LEFT : String;
	private var RIGHT : String;
	private var NONE : String;
	private var m_WeaponInventory : Inventory;
	private var m_RightResource : ResourceBase;
	private var m_LeftResource : ResourceBase;
	private var m_Character : Character;
	private var m_ClientCharacter : Character;
	private var m_CharacterId : ID32;
	private var m_LeftPos : Number;
	private var m_RightPos : Number;
	private var m_MaxCounter : Number;
	private var m_MinCounter : Number;
	private var m_Resources : Array;
	private var m_Scale : Number;
	private var m_IsPlayerCharacter : Boolean;
	private var m_HideWhenEmpty : Boolean;
	private var m_Tooltip : TooltipInterface;
	private var m_CurrentTooltipClip : MovieClip;

	public function Resources();

	public function SetHideWhenEmpty(hide:Boolean);

	public function SetCharacter(character:Character) : Void;

	public function GetResourceType(weaponType:Number) : Number;

	public function GetResource(resourceType) : ResourceBase;

	public function SetResourcesVisibility(isCharacterPresent:Boolean) : Void;

	public function AddResource(resourceType:Number) : ResourceBase;

	private function onMouseMove();

	private function GetResourceColor(resourceType:Number);

	private function ShowTooltip(resource:MovieClip);

	private function SlotTooltipLayout();

	private function CloseTooltip();

	public function ClearResource(resourceSide:String) : Void;

	public function HideResource(resourceSide:String) : Void;

	public function SlotToggleCombat(isInCombat) : Void;

	public function SlotResourceUpdated(resourceType:Number, resourceAmount:Number, targetID:ID32);

	public function GetDirection(resourceType:Number) : String;

	public function IsResourceVisible(resource:Number) : Boolean;

	public function SlotWeaponRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean);

	public function SlotWeaponAdded(inventoryID:com.Utils.ID32, itemPos:Number);

	public function SlotWeaponChanged(inventoryID:com.Utils.ID32, itemPos:Number);

}
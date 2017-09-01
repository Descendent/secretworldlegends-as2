import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Character;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.Tooltip.*;
import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.Components.SearchBox;
import gfx.controls.Button;
import gfx.controls.ScrollingList;
import gfx.controls.DropdownMenu;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import gfx.utils.Delegate;
import flash.geom.Point;
import flash.geom.Rectangle;
import mx.transitions.easing.*;
intrinsic class GUI.CharacterSheet.DressingRoomComponent extends UIComponent
{
	private var ZOOM_SPEED : Number;
	public var m_CloseButton : MovieClip;
	private var m_Background : MovieClip;
	private var m_Header : TextField;
	private var m_LocationDropdown : DropdownMenu;
	private var m_SearchBox : SearchBox;
	private var m_ItemList : ScrollingList;
	private var m_WardrobeInventory : Inventory;
	private var m_EquippedInventory : Inventory;
	private var m_WearButton : Button;
	private var m_RandomizeButton : Button;
	private var m_CurrentLocation : Number;
	private var m_Width : Number;
	private var m_Height : Number;
	private var m_LocationLabels : Object;
	private var m_SearchText : String;

	public function DressingRoomComponent();

	private function SlotBGClick();

	public function configUI() : Void;

	private function CanLocationBeUnequipped(location:Number) : Boolean;

	private function RemoveFocus() : Void;

	private function SetLabels() : Void;

	private function Update() : Void;

	private function OnSearchText(event:Object);

	private function AddItem(inventoryID:ID32, invItem:InventoryItem, invPos:Number, isEquipped:Boolean, doSort:Boolean) : Void;

	private function UpdateLocationList() : Void;

	private function UpdateItemList() : Void;

	private function OnLocationSelected(event:Object) : Void;

	private function OnItemSelected(event:Object) : Void;

	private function OnItemDoubleClicked(event:Object) : Void;

	private function SetWearButtonLabel(event:Object) : Void;

	private function OnPreview() : Void;

	private function OnWearButtonPress() : Void;

	private function OnWearButton() : Void;

	private function OnWearAllButton() : Void;

	private function OnRandomizeButton() : Void;

	public function GetWidth() : Number;

	public function GetHeight() : Number;

	public function Open(anchor:Point) : Void;

	public function Close(anchor:Point) : Void;

	private function LocationSort(a, b) : Number;

}
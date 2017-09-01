import com.GameInterface.GearData;
import flash.geom.Point;
import flash.geom.Rectangle;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import gfx.motion.Tween;
import gfx.core.UIComponent;
import mx.transitions.easing.*;
import gfx.utils.Delegate;
import com.GameInterface.Inventory;
import com.GameInterface.Game.Shortcut;
import com.GameInterface.Game.ShortcutData;
import com.GameInterface.GearManager;
import com.GameInterface.GearDataAbility;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.Components.ItemComponent;
import com.GameInterface.Lore;
intrinsic class GUI.CharacterSheet.GearManagerComponent extends UIComponent
{
	static private var DRAG_PADDING : Number;
	static private var ANIMATION_DURATION : Number;
	static private var ACTION_CREATE : Number;
	static private var ACTION_OVERWRITE : Number;
	static private var ACTION_RENAME : Number;
	static private var ACTION_DELETE : Number;
	static private var ACTION_LOAD : Number;
	static private var ACTION_IMPORT : Number;
	static private var MAX_VISIBLE_BUILD_SLOTS : Number;
	static private var TOOLTIP_PADDING : Number;
	static private var ZOOM_SPEED : Number;
	static private var AUXILIARY_SLOT_ACHIEVEMENT : Number;
	static private var AUGMENT_SLOT_ACHIEVEMENT : Number;
	static private var AEGIS_ACHIEVEMENT : Object;
	static private var ACTIVE_SHORTCUTBAR_COUNT : Number;
	static private var ACTIVE_SHORTCUTBAR_FIRSTSLOT : Number;
	static private var PASSIVE_SHORTCUTBAR_COUNT : Number;
	static private var PASSIVE_SHORTCUTBAR_FIRSTSLOT : Number;
	static private var AUGMENT_SHORTCUTBAR_COUNT : Number;
	static private var AUGMENT_SHORTCUTBAR_FIRSTSLOT : Number;
	static private var TALISMAN_COUNT : Number;
	static private var WEAPON_COUNT : Number;
	static private var VIEW_ICON_TOOLTIP : String;
	static private var CLOSEVIEW_ICON_TOOLTIP : String;
	static private var RENAME_BUILD_TOOLTIP : String;
	static private var DELETE_BUILD_TOOLTIP : String;
	static private var SHARE_ICON_TOOLTIP : String;
	public var m_CloseButton : MovieClip;
	private var m_TopDividerLine : MovieClip;
	private var m_Background : MovieClip;
	private var m_Title : TextField;
	private var m_ViewPanel : MovieClip;
	private var m_MainContent : MovieClip;
	private var m_This : MovieClip;
	private var m_CurrentPanel : MovieClip;
	private var m_Target : Object;
	private var m_CurrentCallback : Function;
	private var m_OldPanel : MovieClip;
	private var m_Tooltip : TooltipInterface;
	private var m_Builds : Array;
	private var m_SelectedIndex : Number;
	private var m_IsConfimationPanelOpen : Boolean;
	private var m_ErrorPanel : MovieClip;
	private var m_Validator : MovieClip;
	private var m_ValidatorText : TextField;
	private var m_Action : Number;
	private var m_DoListen : Boolean;
	private var m_SaveInfoText : TextField;
	private var m_Width : Number;
	private var m_Height : Number;
	private var m_ConfirmPanel : MovieClip;
	private var m_UserInput : Boolean;
	private var m_UserInputUnlimitedChars : Boolean;
	private var m_CheckInterval : Number;
	private var m_PositiveLabel : String;
	private var m_CharacterHasBuild : Boolean;
	private var m_ResourceIconMonitor : DistributedValue;

	public function GearManagerComponent();

	private function onMouseDown() : Void;

	public function configUI() : Void;

	private function onUnload();

	private function CheckScrollBarComponentInitialized() : Void;

	private function RemoveFocus() : Void;

	private function SlotGearManagerDataUpdated() : Void;

	private function GetContentIndexAt(x:Number, y:Number) : Number;

	private function SlotClickContentOverlayViewIcon(scope:MovieClip) : Void;

	private function SlotClickContentOverlayRenameIcon(scope:MovieClip) : Void;

	private function SlotClickContentOverlayDeleteIcon(scope:MovieClip) : Void;

	private function SlotClickContentOverlayShareIcon(scope:MovieClip) : Void;

	private function SlotRollContentOverlayViewIcon();

	private function SlotRollContentOverlayRenameIcon();

	private function SlotRollContentOverlayDeleteIcon();

	private function SlotRollContentOverlayShareIcon();

	private function CreateTooltip(label:String) : Void;

	private function SlotRollOutIcon() : Void;

	public function GetWidth() : Number;

	public function GetHeight() : Number;

	public function Open(anchor:Point) : Void;

	public function Close(anchor:Point) : Void;

	private function SetAction(newAction:Number) : Void;

	private function SetSelectedIndex(newIndex:Number) : Void;

	private function OpenPanel(panel:MovieClip, callBack:Function) : Void;

	private function OpenPanelDone() : Void;

	private function OpenPanelCallback() : Void;

	private function RevertPanel() : Void;

	private function CancelViewBuild() : Void;

	private function ShareBuildHandler() : Void;

	private function VerifyBuildName() : Void;

	private function ViewBuildHandler() : Void;

	private function PopulateGearIcons(panel:MovieClip, build:GearData);

	private function CleanPanel(panel:MovieClip, build:GearData) : Void;

	private function PopulateWeaponChakraSlot(powerSlot:MovieClip, inventoryItem:com.GameInterface.InventoryItem) : Void;

	private function SaveBuildHandler(event:Object) : Void;

	public function SetNewUpdateButtonDisabledState(disabled:Boolean) : Void;

	private function SetButtonDisabledState(disabled:Boolean) : Void;

	private function UpdateBuildHandler(event:Object) : Void;

	private function CheckDialogComponentsInitialized(scope:Object) : Void;

	private function onKeyUp() : Void;

	private function ConfirmPanelMoveDragHandler() : Void;

	private function ConfirmPanelMoveDragReleaseHandler() : Void;

	private function m_ErrorPanelMoveDragHandler() : Void;

	private function m_ErrorPanelMoveDragReleaseHandler() : Void;

	private function PositiveButtonClickHandler(event:Object) : Void;

	private function GetGearSelectionFlags() : Number;

	private function NegativeButtonClickHandler(event:Object) : Void;

	private function CloseConfirmationPanel() : Void;

	private function DeleteBuild() : Void;

	private function RenameBuild() : Void;

	private function ImportBuild() : Void;

	private function LoadBuildHandler(event:Object) : Void;

	private function SlotGearManagerError(errorCode:Number, message:String) : Void;

	private function CloseErrorPanel() : Void;

	private function ListItemsManualUpdate() : Void;

	private function AvailableBuildSlots() : Number;

	private function MaximumBuildSlots() : Number;

	private function ListItemsRollOverHandler(event:Object) : Void;

	private function ListItemsRollOutHandler(event:Object) : Void;

	private function ListItemsDoubleClickHandler(event:Object) : Void;

	private function SetMainContentButtonState() : Void;

	private function ListItemsScrollHandler(event:Object) : Void;

	private function ListItemsClickHandler(event:Object) : Void;

}
import com.Components.InventoryItemList.MCLItemInventoryItem;
import com.Components.ListHeader;
import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.ColumnData;
import com.Components.WindowComponentContent;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.ShopInterface;
import com.GameInterface.Utils;
import com.Utils.ID32;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.Utils.Text;
import flash.geom.Point;
import gfx.controls.Button;
import gfx.controls.ButtonBar;
import gfx.controls.ScrollBar;
import gfx.controls.ScrollingList;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.Shop.ShopWindowContent extends WindowComponentContent
{
	static public var ITEM_WIDTH : Number;
	static public var NAME_WIDTH : Number;
	static public var RANK_WIDTH : Number;
	static public var PRICE_WIDTH : Number;
	static public var BUY : Number;
	static public var SELL : Number;
	static public var BUYBACK : Number;
	static private var TOKEN_MAX_SIZE : Number;
	public var SignalContentInitialized : Signal;
	private var m_BuyList : MultiColumnListView;
	private var m_SellList : MultiColumnListView;
	private var m_BuyBackList : MultiColumnListView;
	private var m_ButtonTabDivider : MovieClip;
	private var m_SellRepairInfo : TextField;
	private var m_ScrollBarBuy : ScrollBar;
	private var m_ScrollBarSell : ScrollBar;
	private var m_ScrollBarBuyBack : ScrollBar;
	private var m_CurrentFocus : Number;
	private var m_FilterPanel : MovieClip;
	private var m_InfoPanel : MovieClip;
	private var m_TokenPanel : MovieClip;
	private var m_ButtonBar : MovieClip;
	private var m_TabButtonArray : Array;
	private var m_Tokens : Object;
	private var m_ShopInterface : ShopInterface;
	private var m_Inventory : Inventory;
	private var m_StaticInventory : Inventory;
	private var m_EquipInventory : Inventory;
	private var m_BuyBackInventory : Inventory;
	private var m_IsTokensOpen : Boolean;
	private var m_SelectedIndex : Number;
	private var m_SelectedSellIndex : Number;
	private var m_SelectedBuyBackIndex : Number;
	private var m_CanUndo : Boolean;
	private var m_SearchOnlyUseable : Boolean;
	private var m_SearchOnlyPurchaseable : Boolean;
	private var m_TDB_Buy : String;
	private var m_TDB_Sell : String;
	private var m_TDB_BuyBack : String;
	private var m_Width : Number;
	private var m_Height : Number;
	private var m_TokenTextFormat : TextFormat;
	private var m_Character : Character;
	private var m_IsInitialized : Boolean;

	public function ShopWindowContent();

	public function SlotUpdateShopItems() : Void;

	private function SlotItemStatChanged(inventoryID:com.Utils.ID32, itemPos:Number, stat:Number, newValue:Number) : Void;

	private function LayoutTokenPanel() : Void;

	private function configUI() : Void;

	private function InitializedLayoutComplete() : Void;

	private function CreateList(list:MultiColumnListView, scrollBar:ScrollBar, selectionCallback:Function) : Void;

	private function ResetList(type:Number) : Void;

	private function CanPurchaseItem(inventoryItem:InventoryItem) : Boolean;

	private function CanSellItem(inventoryItem:InventoryItem) : Boolean;

	private function InitTabs() : Void;

	private function SlotButtonBarFocus() : Void;

	public function SlotChangeTabIndex(event:Object) : Void;

	private function UpdateLists() : Void;

	private function SlotTokenAmountChanged(id:Number, newValue:Number, oldValue:Number) : Void;

	public function UpdateBuyItems() : Void;

	private function UpdateSellItems() : Void;

	private function UpdateBuyBackItems() : Void;

	public function Close() : Void;

	public function SlotBuyItemSelected(index:Number, buttonIndex:Number) : Void;

	public function SlotSellItemSelected(index:Number, buttonIndex:Number) : Void;

	public function SlotBuyBackItemSelected(index:Number, buttonIndex:Number) : Void;

	public function SlotBuy() : Void;

	public function SlotPreview() : Void;

	private function SlotSell() : Void;

	private function SlotBuyBack() : Void;

	private function SlotPurchasableSelected(event:Object) : Void;

	private function SlotUseableSelected(event:Object) : Void;

	private function Layout() : Void;

	private function LayoutInfoPanel() : Void;

	private function LayoutFilterPanel() : Void;

	private function UpdateInfoPanel() : Void;

	public function SlotDragEnd(event:Object) : Void;

	public function SetShopInterface(shopInterface:ShopInterface) : Void;

	public function SetSize(width:Number, height:Number) : Void;

	public function GetSize() : Point;

	public function SetTabIndex(value:Number) : Void;

	public function GetTabIndex() : Number;

}
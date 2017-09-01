import com.Components.ItemSlot;
import com.GameInterface.ProjectUtils;
import com.GameInterface.Tradepost;
import com.GameInterface.TradepostSearchData;
import com.GameInterface.TradepostSearchResultData;
import com.GameInterface.InventoryItem;
import com.GameInterface.DialogIF;
import com.GameInterface.Game.Character;
import com.GameInterface.ItemPrice;
import com.GameInterface.Inventory;
import GUI.TradePost.Views.SortButton;
import GUI.TradePost.Views.PromptWindow;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import com.Utils.DragObject;
import com.Utils.ID32;
import gfx.core.UIComponent;
import mx.utils.Delegate;
import com.Components.RightClickMenu;
import com.Components.RightClickItem;
import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.ColumnData;
import com.Components.InventoryItemList.MCLItemInventoryItem;
import com.Components.BankItemSlot;
import gfx.controls.TextInput;
import gfx.controls.Button;
import gfx.controls.ScrollBar;
intrinsic class GUI.TradePost.Views.BuyView extends UIComponent
{
	static private var RIGHT_CLICK_MOUSE_OFFSET : Number;
	static private var DEFAULT_CHECKBOX_WIDTH : Number;
	static private var CHECKBOX_GAP : Number;
	static private var GENERAL_GAP : Number;
	static private var SEARCH_CONTROLS_Y : Number;
	static private var DROPDOWN_CONTROLS_Y : Number;
	static private var RESULT_CONTROLS_Y : Number;
	static private var SCROLL_WHEEL_SPEED : Number;
	static private var TRADE_INVENTORY_SIZE : Object;
	static private var RIGHT_CLICK_LIST : Number;
	static private var RIGHT_CLICK_SALE : Number;
	static private var RIGHT_CLICK_PURCHASE : Number;
	static private var SEARCH : String;
	static private var USABLE_ITEMS_ONLY : String;
	static private var USE_EXACT_NAME : String;
	static private var ITEM_TYPE : String;
	static private var SUB_TYPE : String;
	static private var RARITY : String;
	static private var PRICE : String;
	static private var STACKS : String;
	static private var KEYWORDS : String;
	static private var RESULTS : String;
	static private var TYPE_ALL : String;
	static private var TYPE_PAX : String;
	static private var TYPE_PREMIUM : String;
	static private var BUY : String;
	static private var BUYITEM : String;
	static private var CANCEL_SALE : String;
	static private var CLAIM_ITEM : String;
	static private var EXPIRATION_DAYS : String;
	static private var PRESS_SEARCH_BUTTON : String;
	static private var RARITY_WHITE : Object;
	static private var RARITY_GREEN : Object;
	static private var RARITY_BLUE : Object;
	static private var RARITY_PURPLE : Object;
	static private var RARITY_ORANGE : Object;
	static private var RARITY_RED : Object;
	static private var SALES_HEADER : Object;
	static private var PURCHASES_HEADER : Object;
	private var m_UsableItemsOnlyCheckBox : MovieClip;
	private var m_UseExactNameCheckBox : MovieClip;
	private var m_MinStacksField : TextInput;
	private var m_MaxStacksField : TextInput;
	private var m_SearchField : TextInput;
	private var m_SearchHelptext : TextField;
	private var m_SearchContainer : MovieClip;
	private var m_ItemTypeDropdownMenu : MovieClip;
	private var m_SubTypeDropdownMenu : MovieClip;
	private var m_RarityDropdownMenu : MovieClip;
	private var m_RightClickMenu : MovieClip;
	private var m_SearchButton : MovieClip;
	private var m_ResultsFooter : MovieClip;
	private var m_ScrollBar : ScrollBar;
	private var m_CurrentDialog : DialogIF;
	private var m_SellItemPromptWindow : MovieClip;
	private var m_MySalesHeader : TextField;
	private var m_MySalesNumber : TextField;
	private var m_SaleInventory : MovieClip;
	private var m_MyPurchasesHeader : TextField;
	private var m_MyPurchasesNumber : TextField;
	private var m_PurchaseInventory : MovieClip;
	private var m_Cash : MovieClip;
	private var m_TimeCash : MovieClip;
	private var m_PremiumCash : MovieClip;
	private var m_MemberIcon : MovieClip;
	private var m_MemberText : TextField;
	private var m_SaleItemSlotsArray : Array;
	private var m_PurchaseItemSlotsArray : Array;
	private var m_TradepostInventory : Inventory;
	private var m_TradepostPurchaseInventory : Inventory;
	private var m_SellItemSlot : Number;
	private var m_SellItemInventory : ID32;
	private var m_CancelSaleSlot : Number;
	private var m_TakeItemSlot : Number;
	private var m_ResultsList : MultiColumnListView;
	private var m_ScrollBarPosition : Number;
	private var m_ResultsRowsArray : Array;
	private var m_BuyButton : Button;
	private var m_CheckBoxArray : Array;
	private var m_DropdownMenuArray : Array;
	private var m_CheckInterval : Number;
	private var m_UpdateSubtypeInterval : Number;
	private var m_SelectedItem : Number;
	private var m_CurrentSearchResult : Number;
	private var m_DisableSearchInterval : Number;
	private var m_Character : Character;

	public function BuyView();

	public function onUnload();

	private function configUI() : Void;

	public function SlotMemberStatusUpdated(member:Boolean);

	private function SlotTradeInventoryMouseDown(itemSlot:BankItemSlot, buttonIdx:Number, clickCount:Number) : Void;

	private function SlotPurchaseInventoryMouseDown(itemSlot:BankItemSlot, buttonIdx:Number, clickCount:Number) : Void;

	private function onPurchaseDragBegin(item:BankItemSlot, stackSize:Number) : Void;

	private function SlotItemDroppedOnDesktop() : Void;

	private function SlotDragHandled();

	private function UpdateItems() : Void;

	private function SlotMinStacksChanged(event:Object) : Void;

	private function SlotMaxStacksChanged(event:Object) : Void;

	public function PromptSale(inventoryID:ID32, slotID:Number);

	private function onDragEnd(event:Object) : Void;

	private function SlotSellPromptResponse(price:Number) : Void;

	public function GetItemPriceFromCash(cash:Number) : ItemPrice;

	private function KeyUpEventHandler() : Void;

	public function CreateRightClickMenu() : Void;

	public function SlotHideRightClickMenu() : Void;

	public function UpdateRightClickMenu(RightClickMode:Number, item:MCLItemInventoryItem, itemSlot:Number) : Void;

	private function PositionRightClickMenu() : Void;

	private function HighlightTextField(textField:TextField) : Void;

	private function GetTypes() : Array;

	private function GetSubtypes(type:String) : Array;

	private function SlotDropdownTypeSelected(event:Object) : Void;

	private function SlotFilterUsableItems(event:Object) : Void;

	private function UpdateSubtypesDropdown(scope:Object) : Void;

	private function RemoveFocusEventHandler(event:Object) : Void;

	private function SearchButtonClickEventHandler(event:Object) : Void;

	private function Search() : Void;

	private function SlotEnableSearch() : Void;

	private function SlotResultsReceived() : Void;

	private function UpdateList() : Void;

	private function CancelSaleClickEventHandler(event:Object) : Void;

	private function ClaimItemClickEventHandler(event:Object) : Void;

	private function BuyButtonClickEventHandler(event:Object) : Void;

	private function SlotBuyItemDialog(buttonID:Number, boxIdx:Number);

	private function CheckButtonResize(scope:Object) : Void;

	private function Layout() : Void;

	private function SlotItemClicked(index:Number, buttonIndex:Number) : Void;

	private function IsItemFromUser(item:MCLItemInventoryItem) : Boolean;

	private function SlotSortClicked() : Void;

	private function UnSelectRows() : Void;

	public function SlotItemAdded(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

	public function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean) : Void;

	public function SlotItemStatChanged(inventoryID:com.Utils.ID32, itemPos:Number, stat:Number, newValue:Number) : Void;

	public function SlotItemChanged(inventoryID:com.Utils.ID32, itemPos:Number) : Void;

}
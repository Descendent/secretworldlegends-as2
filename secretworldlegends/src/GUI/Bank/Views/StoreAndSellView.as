import com.Utils.LDBFormat;
import com.Utils.DragObject;
import com.Utils.DragManager;
import com.GameInterface.Inventory;
import com.GameInterface.Game.Character;
import com.GameInterface.Tradepost;
import com.GameInterface.ItemPrice;
import com.GameInterface.ProjectUtils;
import com.GameInterface.Utils;
import gfx.core.UIComponent;
import mx.data.types.Int;
import mx.utils.Delegate;
intrinsic class GUI.Bank.Views.StoreAndSellView extends UIComponent
{
	static private var EXPANSION_LIMIT_REACHED : String;
	static private var PAGE_OF : String;
	static private var COLUMNS : Number;
	static private var ROWS : Number;
	private var m_StoreAndSellHeader : MovieClip;
	private var m_BankContainer : MovieClip;
	private var m_BuySlotButton : MovieClip;
	private var m_PaginatePrevious : MovieClip;
	private var m_PaginateNext : MovieClip;
	private var m_CurrentPage : Number;
	private var m_PageNumber : TextField;
	private var m_TotalPages : Number;
	private var m_DraggingItemInterval : Number;
	private var m_Inventory : Inventory;
	private var m_MaxBankSlots : Number;

	public function StoreAndSellView();

	private function configUI() : Void;

	private function BankIsExpandable() : Boolean;

	private function onDragStart(event:Object) : Void;

	private function onDragEnd(event:Object) : Void;

	private function CheckItemOverPageButtons() : Void;

	private function SlotCharacterStatChanged(stat:Number);

	private function SlotBuySlots() : Void;

	private function SlotPreviousPage() : Void;

	private function SlotBankExpanded(inventoryID:com.Utils.ID32, size:Number) : Void;

	private function SlotNextPage() : Void;

}
import com.Components.WindowComponentContent;
import com.Components.ItemComponent;
import com.GameInterface.Utils;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.LoreBase;
import com.GameInterface.ShopInterface;
import GUI.Shop.InstantBuyEntry;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import gfx.core.UIComponent;
import gfx.controls.ButtonBar;
import gfx.controls.Button;
import gfx.controls.TileList;
intrinsic class GUI.Shop.TopbarShopContent extends WindowComponentContent
{
	private var m_ButtonBar : ButtonBar;
	private var m_NextButton : Button;
	private var m_PrevButton : Button;
	private var m_PageNum : TextField;
	private var m_SprintFeats : Array;
	private var m_SprintItems : Array;
	private var m_CurrentPage : Number;
	private var m_TotalPages : Number;
	static private var ITEMS_PER_PAGE : Number;
	public var AGENT_SYSTEM_UNLOCKED : Number;

	public function TopbarShopContent();

	private function configUI() : Void;

	private function SetupTabs() : Void;

	private function TabSelected() : Void;

	private function FillItems(itemArray:Array) : Void;

	private function SetPage(pageNum:Number);

	private function PreviousPage();

	private function NextPage();

	private function UpdatePagination();

}
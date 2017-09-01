import com.Components.WindowComponentContent;
import com.Components.ItemComponent;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.Utils.Signal;
import gfx.core.UIComponent;
intrinsic class GUI.Shop.InstantBuyContent extends WindowComponentContent
{
	static private var SPLIT_MIN : Number;
	private var m_Entries : Array;
	private var SignalClose : Signal;
	public var SignalContentInitialized : Signal;

	public function InstantBuyContent();

	private function configUI() : Void;

	public function SetOffers(offers:Array, overridePrices:Array, overrideCurrency:Array) : Void;

	private function Close();

}
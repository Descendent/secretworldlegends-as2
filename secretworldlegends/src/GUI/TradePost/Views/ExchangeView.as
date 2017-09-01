import gfx.core.UIComponent;
import gfx.controls.TextInput;
import gfx.controls.Button;
import com.Utils.Text;
import com.Components.FCButton;
import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.ColumnData;
import com.Components.MultiColumnList.MCLItemDefault;
import com.Components.MultiColumnList.MCLItemValueData;
import com.GameInterface.Tradepost;
import com.GameInterface.ItemPrice;
import com.GameInterface.Utils;
import com.GameInterface.ShopInterface;
import com.GameInterface.DialogIF;
import com.Utils.LDBFormat;
intrinsic class GUI.TradePost.Views.ExchangeView extends UIComponent
{
	private var m_Cash : MovieClip;
	private var m_PremiumCash : MovieClip;
	private var m_TimeCash : MovieClip;
	private var m_BuyPane : MovieClip;
	private var m_SellPane : MovieClip;
	private var m_WithdrawButton : Button;
	private var m_BalanceHeader : TextField;
	private var m_PremiumBalance : TextField;
	private var m_Balance : TextField;
	private var m_BuyAurumButton : Button;
	static private var COLUMN_QUANTITY : Number;
	static private var COLUMN_PRICE : Number;

	public function ExchangeView();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function RequestRefresh() : Void;

	private function SlotUpdateExchange() : Void;

	private function PopulateOrders() : Void;

	private function PopulateOffers() : Void;

	private function PopulateBalance() : Void;

	private function UpdatePostStatus() : Void;

	private function PostBuyOrder() : Void;

	private function ConfirmPostBuyOrder(buttonId:Number) : Void;

	private function PostSellOrder() : Void;

	private function ConfirmPostSellOrder(buttonId:Number) : Void;

	private function CancelBuyOrder() : Void;

	private function CancelSellOrder() : Void;

	private function WithdrawExchangeBalance() : Void;

	private function BuyAurum() : Void;

}
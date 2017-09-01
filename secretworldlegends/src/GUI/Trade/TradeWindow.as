import com.Utils.ID32;
import com.Components.WinComp;
import com.Utils.LDBFormat;
import com.GameInterface.Utils;
intrinsic class GUI.Trade.TradeWindow extends WinComp
{
	public function TradeWindow();

	public function SetTradePartner(tradePartner:ID32);

	public function ClearItems();

	private function CloseButtonHandler();

}
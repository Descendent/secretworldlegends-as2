import com.Utils.LDBFormat;
import gfx.controls.Button;
import gfx.core.UIComponent;
import GUI.Bank.ItemCounter;
import com.GameInterface.Tradepost;
intrinsic class GUI.Bank.Views.TransferCashPromptWindow extends UIComponent
{
	static private var TRANSFER_CASH : String;
	static private var TRANSFER_CASH_MESSAGE : String;
	static private var WITHDRAW_LABEL : String;
	static private var DEPOSIT_LABEL : String;
	static private var CANCEL_LABEL : String;
	private var m_Background : MovieClip;
	private var m_Title : TextField;
	private var m_Message : TextField;
	private var m_ItemCounter : ItemCounter;
	private var m_WithdrawButton : Button;
	private var m_DepositButton : Button;
	private var m_CancelButton : Button;

	public function TransferCashPromptWindow();

	private function configUI() : Void;

	public function ShowPrompt() : Void;

	private function SlotCashAmountChanged(newValue:Number) : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

}
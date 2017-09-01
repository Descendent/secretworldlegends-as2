import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.TextInput;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.DistributedValue;
intrinsic class GUI.CabalManagement.TransferCash extends UIComponent
{
	private var m_Title : TextField;
	private var m_UserTip : TextField;
	private var m_CashTransferInput : TextInput;
	private var m_IncreaseButton : Button;
	private var m_DecreaseButton : Button;
	private var m_DepositButton : Button;
	private var m_WithdrawButton : Button;
	private var m_CancelButton : Button;
	public var m_CashAmount : Number;
	private var SignalCancel : Signal;
	private var SignalSendCash : Signal;
	private var SignalWithdrawCash : Signal;

	private function TransferCash();

	private function configUI();

	private function SlotFocusInput();

	private function ChangeAmountByInput();

	private function RemoveFocus() : Void;

	private function SetCashAmount(m_CashAmount);

	private function SetLabels();

	private function IncreaseCashAmount();

	private function DecreaseCashAmount();

	private function DepositCash();

	private function WithdrawCash();

	private function CancelCashTransferring();

}
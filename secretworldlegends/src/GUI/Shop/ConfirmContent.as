import com.Components.WindowComponentContent;
import com.GameInterface.ShopInterface;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.utils.Delegate;
intrinsic class GUI.Shop.ConfirmContent extends WindowComponentContent
{
	private var m_PaymentInfo : MovieClip;
	private var m_TextBlock : TextField;
	private var m_ConfirmButton : Button;
	private var m_CancelButton : Button;
	private var SignalClose : Signal;
	public var SignalContentInitialized : Signal;
	private var m_Confirmed : Boolean;

	public function ConfirmContent();

	private function configUI() : Void;

	public function SetPaymentInfo(itemName:String, itemPrice:String, recurring:Boolean, paymentType:String, cardNumber:String) : Void;

	private function ChangePaymentInfo();

	private function ShowLegalInfo();

	private function ConfirmButtonClicked() : Void;

	private function CancelButtonClicked() : Void;

	public function Close();

}
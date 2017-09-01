import com.Utils.LDBFormat;
import gfx.controls.Button;
import gfx.core.UIComponent;
import gfx.controls.CheckBox;
import com.Utils.Signal;
import com.Utils.Text;
import GUI.TradePost.ItemCounter;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
import mx.utils.Delegate;
intrinsic class GUI.TradePost.Views.SellItemPromptWindow extends UIComponent
{
	static private var COMMISSION_FEE : Number;
	static private var SALES_FEE : Number;
	static private var PATRON_COMMISSION_FEE : Number;
	static private var PATRON_SALES_FEE : Number;
	static private var SELL_ITEM_TITLE : String;
	static private var MESSAGE_WHEN_SOLD : String;
	static private var MINIMUM_LISTING_PRICE : String;
	static private var OK_LABEL : String;
	static private var CANCEL_LABEL : String;
	static private var USE_PREMIUM : String;
	public var SignalPromptResponse : Signal;
	private var m_Character : Character;
	private var m_Background : MovieClip;
	private var m_Title : TextField;
	private var m_Message : TextField;
	private var m_ItemCounter : ItemCounter;
	private var m_MessageWhenSold : TextField;
	private var m_WhenSoldPremiumCash : MovieClip;
	private var m_MessageListingFee : TextField;
	private var m_ListingFeePremiumCash : MovieClip;
	private var m_CancelButton : Button;
	private var m_ConfirmButton : Button;

	public function SellItemPromptWindow();

	private function configUI() : Void;

	public function ShowPrompt() : Void;

	private function SlotCashAmountChanged(newValue:Number) : Void;

	private function UpdateCash(target:MovieClip, value:Number) : Void;

	private function KeyUpEventHandler() : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

}
import com.GameInterface.Tradepost;
import com.Utils.Signal;
import com.Utils.ID32;
import com.GameInterface.Utils;
import com.GameInterface.Game.Character;
intrinsic class GUI.TradePost.TradePostViewsContainer extends MovieClip
{
	static public var BUY_VIEW : String;
	static public var POSTAL_SERVICE_VIEW : String;
	static public var EXCHANGE_VIEW : String;
	public var SignalViewChanged : Signal;
	private var m_BuyViewView : MovieClip;
	private var m_PostalServiceView : MovieClip;
	private var m_ExchangeView : MovieClip;
	private var m_ViewsArray : Array;
	private var m_View : String;

	public function get view() : String;
	public function set view(value:String) : Void;


	public function TradePostViewsContainer();

	private function Init() : Void;

	public function SlotReceiveItem(srcInventory:ID32, srcSlot:Number);

}
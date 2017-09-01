import com.GameInterface.Tradepost;
import com.GameInterface.Inventory;
import com.GameInterface.Game.Character;
import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class GUI.Bank.BankViewsContainer extends MovieClip
{
	static public var STORE_AND_SELL_VIEW : String;
	static public var GUILD_BANK_VIEW : String;
	public var SignalViewChanged : Signal;
	private var m_StoreAndSellView : MovieClip;
	private var m_GuildBankView : MovieClip;
	private var m_ViewsArray : Array;
	private var m_View : String;

	public function get view() : String;
	public function set view(value:String) : Void;


	public function BankViewsContainer();

	private function Init() : Void;

	public function RemoveView(view:String) : Void;

	public function SlotReceiveItem(srcInventory:ID32, srcSlot:Number);

}
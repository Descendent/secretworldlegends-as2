import gfx.core.UIComponent;
import gfx.controls.Button;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.controls.ScrollingList;
import com.GameInterface.Friends;
intrinsic class GUI.TradePost.ComposeMailFriendsList extends UIComponent
{
	static public var FRIENDS_LIST_TYPE : String;
	static public var CABAL_LIST_TYPE : String;
	static private var FRIENDS_TITLE : String;
	static private var CABAL_TITLE : String;
	static private var CANCEL_BUTTON_LABEL : String;
	static private var ACCEPT_BUTTON_LABEL : String;
	public var SignalButtonResponse : Signal;
	private var m_Title : TextField;
	private var m_ScrollingList : ScrollingList;
	private var m_DataProvider : Array;
	private var m_CancelButton : Button;
	private var m_AcceptButton : Button;

	public function ComposeMailFriendsList();

	private function configUI() : Void;

	private function ItemDoubleClickEventHandler() : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

	public function OpenList(type:String) : Void;

	private function UpdateScrollVisibility() : Void;

}
import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.Utils.Signal;
import mx.utils.Delegate;
import com.GameInterface.Tradepost;
import com.GameInterface.Game.Character;
import com.GameInterface.DistributedValue;
import com.Components.WindowComponentContent;
import GUI.TradePost.ComposeMailFriendsList;
import gfx.controls.Button;
import gfx.controls.TextInput;
import gfx.controls.TextArea;
import com.GameInterface.Friends;
import com.GameInterface.Guild.GuildBase;
import com.Components.FCButton;
intrinsic class GUI.TradePost.ComposeMailWindowContent extends WindowComponentContent
{
	static private var MAX_EMAIL_CHARACTERS : Number;
	static private var HEADER_BUTTONS_GAP : Number;
	static private var TO_LABEL : String;
	static private var MESSAGE_LABEL : String;
	static private var ERROR_SENDING_MAIL_MESSAGE : String;
	static private var SEND_MAIL_SUCCESS : String;
	static private var ERROR_ATTACHING_TO_MAIL : String;
	static private var SEND : String;
	static private var FRIENDS_BUTTON_TOOLTIP : String;
	static private var CABAL_BUTTON_TOOLTIP : String;
	public var SignalCloseWindow : Signal;
	private var m_ToLabel : MovieClip;
	private var m_ToInput : TextInput;
	private var m_FriendsButton : FCButton;
	private var m_CabalButton : FCButton;
	private var m_BodyLabel : MovieClip;
	private var m_BodyInput : TextArea;
	private var m_SendButton : MovieClip;
	private var m_FriendsList : MovieClip;
	private var m_KeyListener : Object;

	public function ComposeMailWindowContent();

	private function configUI() : Void;

	private function onUnload() : Void;

	private function SlotFriendsListResponse(selectedName:String) : Void;

	private function UpdateSendButtonState() : Void;

	private function KeyUpEventHandler() : Void;

	private function ButtonClickHandler(event:Object) : Void;

	private function DisableControls(toggle:Boolean) : Void;

	private function SelectToInputField() : Void;

	private function SlotMailSent(succeed:Boolean, message:String) : Void;

}
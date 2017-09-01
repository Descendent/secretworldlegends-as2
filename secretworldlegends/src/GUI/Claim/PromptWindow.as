import com.Utils.LDBFormat;
import gfx.controls.Button;
import com.Utils.Signal;
intrinsic class GUI.Claim.PromptWindow extends MovieClip
{
	static public var DELETE_ACTION : String;
	static public var CLAIM_ACTION : String;
	static public var CLAIM_ALL_ACTION : String;
	static public var CLAIM_LINK_ACTION : String;
	static public var CLAIM_STEAM_ACTION : String;
	static public var RESPONSE_OK : String;
	static public var RESPONSE_CANCEL : String;
	static private var CLAIM_MESSAGE : String;
	static private var CLAIM_ALL_MESSAGE : String;
	static private var DELETE_MESSAGE : String;
	static private var CLAIM_LINK_MESSAGE : String;
	static private var CLAIM_STEAM_MESSAGE : String;
	static private var OK : String;
	static private var CANCEL : String;
	public var SignalPromptResponse : Signal;
	private var m_Text : TextField;
	private var m_OKButton : Button;
	private var m_CancelButton : Button;
	private var m_ItemID : Number;

	public function PromptWindow();

	private function onLoad() : Void;

	public function ShowPrompt(action:String, selectedID:Number) : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

	public function IsVisible() : Boolean;

	public function Hide() : Void;

}
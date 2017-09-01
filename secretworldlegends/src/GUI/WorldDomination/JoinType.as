import com.Utils.LDBFormat;
import com.Utils.Signal;
intrinsic class GUI.WorldDomination.JoinType extends MovieClip
{
	static public var JOIN_SOLO_SELECTION : Number;
	static public var JOIN_AS_PARTY_SELECTION : Number;
	static private var JOIN_SOLO : String;
	static private var JOIN_AS_PARTY : String;
	static private var JOIN_RADIO_GROUP : String;
	static private var DEFAULT_RADIO_BUTTON_WIDTH : Number;
	public var SignalJoinTypeSelectionChanged : Signal;
	private var m_JoinTypeContainer : MovieClip;
	private var m_JoinSoloRadioButton : MovieClip;
	private var m_JoinAsPartyRadioButton : MovieClip;
	private var m_ControlsArray : Array;
	private var m_CheckInterval : Number;
	private var m_IsDisabled : Boolean;
	private var m_Selection : Number;
	private var m_IsJoinTypeHidden : Boolean;

	public function get selection() : Number;
	public function set selection(value:Number) : Void;

	public function get disabled() : Boolean;
	public function set disabled(value:Boolean) : Void;

	public function get hideJoinAsParty() : Boolean;
	public function set hideJoinAsParty(value:Boolean) : Void;


	public function JoinType();

	private function Init() : Void;

	private function SelectionEventHandler() : Void;

	private function CheckButtonResize(scope:Object) : Void;

	private function Layout(scope:Object) : Void;

}
import com.Utils.Signal;
intrinsic class GUI.Dialogue.DialogueEntry extends MovieClip
{
	private var m_Background : MovieClip;
	private var m_Icon : MovieClip;
	private var m_Text : TextField;
	private var m_IsPlaying : Boolean;
	private var m_IsExhausted : Boolean;
	private var m_Disabled : Boolean;
	private var m_ActiveIndex : Number;
	private var m_TopicDepth : Number;
	private var m_Index : Number;
	private var m_TextContent : String;
	public var SignalClicked : Signal;
	private var m_VoiceHandle : Number;
	private var m_FirstQuestionId : Number;
	private var m_HasBeenPlayed : Boolean;
	static private var BUTTON_STATE_PLAYING : String;
	static private var BUTTON_STATE_DISABLED : String;
	static private var BUTTON_STATE_NORMAL : String;
	static private var BUTTON_STATE_NORMAL_OVER : String;
	static private var BUTTON_STATE_EXHAUSTED : String;
	static private var BUTTON_STATE_EXHAUSTED_OVER : String;
	private var m_ButtonState : String;

	public function DialogueEntry();

	public function SetExhausted(exhausted:Boolean);

	public function IsExhausted();

	public function onRollOver();

	public function onRollOut();

	public function onRelease();

	public function SetText(text:String);

	public function SetIndex(index:Number);

	public function SetIsPlaying(playing:Boolean);

	public function SetDisabled(disabled:Boolean);

	public function UpdateButtons();

	public function SetVoiceHandle(voiceHandle:Number);

	public function GetVoiceHandle();

	public function SetDepth(depth:Number);

	public function CheckExhausted();

}
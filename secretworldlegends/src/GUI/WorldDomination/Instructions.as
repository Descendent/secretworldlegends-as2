import com.Utils.LDBFormat;
import com.Utils.Signal;
import GUI.WorldDomination.MiniMap;
import mx.transitions.easing.*;
intrinsic class GUI.WorldDomination.Instructions extends MovieClip
{
	static private var FADE_DURATION : Number;
	static private var CLOSE_BUTTON_SIZE : Number;
	static private var CLOSE_BUTTON_GAP : Number;
	static private var INSTRUCTION_CLOSE_BUTTON : String;
	public var SignalInstructionsAreVisible : Signal;
	private var m_Background : MovieClip;
	private var m_CloseButton : MovieClip;
	private var m_Content : MovieClip;
	private var m_InstructionsAreVisible : Boolean;

	public function Instructions();

	private function SetSize(x:Number, y:Number, width:Number, height:Number) : Void;

	public function SetContent(title:String, subtitle:String, bodyText:String) : Void;

	private function SlotCloseButtonSelected(name:String) : Void;

	public function Show() : Void;

	public function Hide() : Void;

}
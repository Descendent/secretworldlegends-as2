import com.Utils.LDBFormat;
import com.Components.WindowComponentContent;
import GUI.WorldDomination.UniformTypes;
import com.GameInterface.PvPMinigame.PvPMinigame;
import flash.geom.Point;
intrinsic class GUI.WorldDomination.JoinMinigamePromptContent extends WindowComponentContent
{
	static private var TEAM_MESSAGE : String;
	static private var MESSAGE : String;
	static private var SELECTED_UNIFORM : String;
	static private var DECLINE : String;
	static private var JOIN : String;
	static private var EL_DORADO_ID : Number;
	static private var STONEHENGE_ID : Number;
	static private var FUSANG_PROJECTS_ID : Number;
	static private var SHAMBALA_ID : Number;
	private var m_SelectedUniform : Number;
	private var m_MessageTextField : TextField;
	private var m_TimerTextField : TextField;
	private var m_Separator : MovieClip;
	private var m_UniformTypes : MovieClip;
	private var m_DeclineButton : MovieClip;
	private var m_JoinButton : MovieClip;
	private var m_CountdownInterval : Number;
	private var m_CountdownTimer : Number;

	public function JoinMinigamePromptContent();

	private function SelectedUniformIsValid(selectedUniform:Number) : Boolean;

	private function onLoad() : Void;

	private function Countdown(scope:Object) : Void;

	public function GetUniformName(uniformID:Number) : String;

	private function Position() : Void;

	private function GetNewUniformSelection() : Number;

	private function DeclineEventHandler() : Void;

	private function JoinEventHandler() : Void;

}
import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import gfx.controls.ScrollingList;
import gfx.controls.Button;
import com.Utils.Colors;
import com.GameInterface.ScenarioInterface;
import com.GameInterface.Game.Character;
import com.GameInterface.Utils;
intrinsic class GUI.ScenarioInterface.ScenarioScoreboardContent extends WindowComponentContent
{
	private var m_ScenarioName : TextField;
	private var m_ScenarioObjective : TextField;
	private var m_ScenarioGroup : TextField;
	private var m_ScenarioDifficulty : TextField;
	private var m_ScenarioGrade : TextField;
	private var m_EarnedGrade : TextField;
	private var m_GradeBackground : MovieClip;
	private var m_EventScrollingList : ScrollingList;
	private var m_AcceptButton : Button;
	private var m_Timer1 : Number;
	private var m_Timer2 : Number;
	private var m_AnimateIndex : Number;
	private var m_Results : Array;
	private var m_Icon : String;
	static private var FAIL : Object;
	static private var GOLD : Object;
	static private var SILVER : Object;
	static private var BRONZE : Object;
	static private var PLATINUM : Object;

	public function ScenarioScoreboardContent();

	private function onUnload();

	private function configUI();

	private function SetLabels() : Void;

	private function parseScenarioResults(resultsArray:Array);

	public function SetDisplay() : Void;

	private function AnimateScoreboard();

	private function AnimateGrade();

	private function ExitScenario();

}
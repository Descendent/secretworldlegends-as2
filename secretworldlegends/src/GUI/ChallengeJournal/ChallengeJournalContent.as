import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import com.GameInterface.Quests;
import com.GameInterface.Utils;
import GUI.ChallengeJournal.ScrollPanel;
intrinsic class GUI.ChallengeJournal.ChallengeJournalContent extends WindowComponentContent
{
	private var m_BonusBlocker : MovieClip;
	private var m_MoFTip : TextField;
	private var m_DailyTitle : TextField;
	private var m_DailyTime : TextField;
	private var m_DailyDivider : MovieClip;
	private var m_DailyPanel : ScrollPanel;
	private var m_WeeklyTitle : TextField;
	private var m_WeeklyDivider : MovieClip;
	private var m_WeeklyPanel : ScrollPanel;
	private var m_TimeInterval : Number;
	private var m_DailyTotal : Number;
	private var m_DailyComplete : Number;
	private var m_WeeklyTotal : Number;
	private var m_WeeklyComplete : Number;
	private var PANEL_WIDTH : Number;
	private var DAILY_HEIGHT : Number;
	private var WEEKLY_HEIGHT : Number;
	private var RESET_HOUR : Number;
	private var RESET_MINUTE : Number;
	private var RESET_SECOND : Number;
	private var PANEL_TOP_PADDING : Number;
	private var PANEL_BOTTOM_PADDING : Number;

	public function ChallengeJournalContent();

	private function configUI() : Void;

	private function Layout() : Void;

	private function PopulateChallenges() : Void;

	private function UpdateHeaders() : Void;

	private function UpdateBonusBlocker() : Void;

	private function OnUpdateTime() : Void;

	private function GetDailyTimeRemaining() : String;

	private function GetNeedHours(currentDate:Date) : Number;

	private function GetNeedMinutes(currentDate:Date) : Number;

	private function GetNeedSeconds(currentDate:Date) : Number;

	private function SlotMissionCompleted(missionID:Number) : Void;

	private function SlotGoalUpdated(tierID:Number, goalID:Number, solvedTimes:Number, repeatCount:Number) : Void;

}
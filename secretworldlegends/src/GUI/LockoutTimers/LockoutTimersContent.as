import com.Components.WindowComponentContent;
import com.GameInterface.Game.Character;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import GUI.LockoutTimers.LockoutEntry;
intrinsic class GUI.LockoutTimers.LockoutTimersContent extends WindowComponentContent
{
	private var m_DailyHeader : TextField;
	private var m_KeysHeader : TextField;
	private var m_RaidsHeader : TextField;
	private var m_DailyLoginReset : LockoutEntry;
	private var m_ChallengeReset : LockoutEntry;
	private var m_KeyReset : LockoutEntry;
	private var m_DungeonKeys : LockoutEntry;
	private var m_ScenarioKeys : LockoutEntry;
	private var m_LairKeys : LockoutEntry;
	private var m_LFRRaid : LockoutEntry;
	private var m_EliteRaid : LockoutEntry;
	static private var RAID_LFG : Number;
	static private var RAID_ELITE : Number;
	private var DAILY_RESET_HOUR : Number;
	private var DAILY_RESET_MINUTE : Number;
	private var DAILY_RESET_SECOND : Number;

	public function LockoutTimersContent();

	private function configUI();

	private function SetLabels() : Void;

	private function SetupLockouts() : Void;

}
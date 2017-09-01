import com.Components.WindowComponentContent;
import com.GameInterface.Game.Character;
import com.GameInterface.SpellBase;
import com.GameInterface.Quests;
import com.GameInterface.Utils;
import gfx.controls.ScrollingList;
import gfx.controls.Button;
import gfx.controls.ButtonGroup;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
intrinsic class GUI.LockoutTimers.LockoutTimersContent extends WindowComponentContent
{
	private var m_Description : TextField;
	private var m_ItemList : ScrollingList;
	private var m_RaidTab : Button;
	private var m_ScenarioTab : Button;
	private var m_MissionTab : Button;
	private var m_TabGroup : ButtonGroup;
	static private var m_RaidList : Array;
	static private var m_ScenarioList : Array;
	static private var TYPE_BUFF : Object;
	static private var TYPE_MISSION : Object;
	static private var MAX_ROWS : Object;

	public function LockoutTimersContent();

	private function configUI();

	private function SetLabels() : Void;

	private function GetLockoutsFromBuffs(buffArray:Array, iconString:String) : Array;

	private function TabChanged(button:Button) : Void;

	private function RemoveFocus() : Void;

	private function SetScrollBarVisibility() : Void;

}
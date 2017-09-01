import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Character;
import com.Utils.Archive;
import com.Utils.LDBFormat;
import GUI.Team.TeamClip;
import flash.geom.Point;
intrinsic class GUI.Team.GroupMenu extends MovieClip
{
	private var m_TeamClip : TeamClip;
	private var m_MenuItems : Array;
	private var m_HideGroupWindow : Boolean;
	private var m_LockGroupWindow : Boolean;
	private var m_LockDefensiveWindow : Boolean;
	private var m_DockDefensiveWindow : Boolean;
	private var m_HideGroupWindowText : String;
	private var m_LockGroupWindowText : String;
	private var m_LockDefensiveWindowText : String;
	private var m_DockDefensiveWindowText : String;
	private var m_LastClicked : String;
	private var m_CurrentClicked : String;

	public function GroupMenu();

	public function Initialize() : Void;

	private function DrawMenu(items:Array, y:Number, depth:Number) : Void;

	private function onMouseUp() : Void;

	public function RemoveMenu() : Void;

	private function OpenSubMenu(index) : Void;

	private function ToggleLockGroupWindow();

	public function SetLockGroupWindow(value:Boolean) : Void;

	private function ToggleLockDefensiveWindow();

	public function SetLockDefensiveWindow(value:Boolean) : Void;

	private function ToggleDockDefensiveWindow();

	public function SetDockDefensiveWindow(value:Boolean) : Void;

	private function ToggleHideGroupWindow();

	public function SetHideGroupWindow(value:Boolean) : Void;

}
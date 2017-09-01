import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Character;
import com.Utils.Archive;
import com.Utils.LDBFormat;
import GUI.Team.TeamMember;
import flash.geom.Point;
intrinsic class GUI.Team.DefensiveMenu extends MovieClip
{
	private var m_TeamMember : TeamMember;
	private var m_MenuItems : Array;
	private var m_LockDefensiveWindow : Boolean;
	private var m_LockDefensiveWindowText : String;
	private var m_LastClicked : String;
	private var m_CurrentClicked : String;

	public function DefensiveMenu();

	public function Initialize() : Void;

	private function DrawMenu(items:Array, y:Number, depth:Number) : Void;

	private function onMouseUp() : Void;

	public function RemoveMenu() : Void;

	private function OpenSubMenu(index) : Void;

	private function ToggleLockDefensiveWindow();

	public function SetLockDefensiveWindow(value:Boolean) : Void;

}
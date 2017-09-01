import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Character;
import com.Utils.Archive;
import com.Utils.LDBFormat;
import GUI.Team.RaidClip;
import flash.geom.Point;
intrinsic class GUI.Team.TeamMenu extends MovieClip
{
	private var m_RaidClip : RaidClip;
	private var m_MenuItems : Array;
	private var m_GroupItems : Array;
	private var m_WindowFrameLocked : Boolean;
	private var m_ShowWindow : Boolean;
	private var m_ShowWindowFrame : Boolean;
	private var m_ShowGroupNames : Boolean;
	private var m_ShowHPNumbers : Boolean;
	private var m_ShowHealthBar : Boolean;
	private var m_ShowNametagIcons : Boolean;
	private var m_IsGroupDetached : Boolean;
	private var m_ShowWindowText : String;
	private var m_LockWindowFrameText : String;
	private var m_ShowWindowFrameText : String;
	private var m_ShowGroupNamesText : String;
	private var m_TDB_Show : String;
	private var m_TDB_Hide : String;
	private var m_TDB_ShowAll : String;
	private var m_ShowMaxMinHpText : String;
	private var m_ShowHealthBarText : String;
	private var m_ShowNametagIconsText : String;
	private var m_LastClicked : String;
	private var m_CurrentClicked : String;

	public function TeamMenu();

	public function Initialize() : Void;

	private function DrawMenu(items:Array, y:Number, depth:Number) : Void;

	private function onMouseUp() : Void;

	public function RemoveMenu() : Void;

	private function ToggleShowWindow() : Void;

	private function ToggleWindowLock() : Void;

	private function ToggleWindowFrame() : Void;

	private function ToggleMaxMinHP() : Void;

	private function ToggleHealthBar() : Void;

	private function ToggleNametagIcons() : Void;

	private function ToggleGroupNames() : Void;

	private function ShowAllGroups() : Void;

	private function ToggleGroupVisibility(index) : Void;

	private function OpenSubMenu(index) : Void;

	public function SetShowWindow(value:Boolean) : Void;

	public function SetWindowFrameLocked(value:Boolean) : Void;

	public function SetShowWindowFrame(value:Boolean) : Void;

	public function SetShowGroupNames(value:Boolean) : Void;

	private function SetWindowSize(size:Number) : Void;

	public function SetMenuAlignment(value:Number) : Void;

	public function SetShowHPNumbers(value:Boolean) : Void;

	public function SetShowHealthBar(value:Boolean) : Void;

	public function SetShowNametagIcons(value:Boolean) : Void;

	public function SetIsGroupDetached(value:Boolean) : Void;

}
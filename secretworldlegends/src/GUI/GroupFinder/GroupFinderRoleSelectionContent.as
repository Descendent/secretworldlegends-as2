import com.Components.WindowComponentContent;
import com.Components.FCButton;
import com.GameInterface.GroupFinder;
import com.GameInterface.DistributedValue;
import com.Utils.LDBFormat;
import com.Utils.Archive;
import gfx.controls.Button;
import mx.utils.Delegate;
intrinsic class GUI.GroupFinder.GroupFinderRoleSelectionContent extends WindowComponentContent
{
	private var m_MainText : TextField;
	private var m_TankRole : FCButton;
	private var m_DPSRole : FCButton;
	private var m_HealRole : FCButton;
	private var m_TankLabel : TextField;
	private var m_DPSLabel : TextField;
	private var m_HealLabel : TextField;
	private var m_TimerText : TextField;
	private var m_AcceptButton : Button;
	private var m_CancelButton : Button;
	private var m_TimerInterval : Number;
	private var m_SecondsRemaining : Number;
	static private var TIMER_TEXT : String;
	static private var TIMEOUT : Number;

	public function GroupFinderRoleSelectionContent();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function UpdateTimer() : Void;

	private function secondsToTimeString(seconds:Number) : String;

	private function UpdateAcceptButton() : Void;

	private function RoleButtonClickHandler() : Void;

	private function AcceptClickHandler() : Void;

	private function CancelClickHandler() : Void;

	public function SetRoles(rolesArray:Array) : Void;

	public function BuildArchive() : Archive;

	private function Close() : Void;

}
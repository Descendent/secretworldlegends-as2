import com.GameInterface.DistributedValue;
import com.GameInterface.AccountManagement;
import GUIFramework.SFClipLoader;
import com.Utils.Archive;
import com.Utils.Signal;
import com.Utils.SignalGroup;
import flash.external.*;
import flash.geom.Rectangle;
import mx.transitions.easing.*;
intrinsic class com.Utils.HUDController
{
	static public var s_ResolutionScaleMonitor : Object;
	static public var s_HUDScaleMonitor : Object;
	static public var s_AbilityBarScaleMonitor : Object;
	static public var s_PlayerInfoScaleMonitor : Object;
	static public var s_TargetInfoScaleMonitor : Object;
	static public var s_LeftWeaponStatusScaleMonitor : Object;
	static public var s_RightWeaponStatusScaleMonitor : Object;
	static public var s_LeftEnergyScaleMonitor : Object;
	static public var s_RightEnergyScaleMonitor : Object;
	static public var s_PlayerCastbarScaleMonitor : Object;
	static public var s_TargetCastbarScaleMonitor : Object;
	static public var s_MissionTrackerScaleMonitor : Object;
	static public var s_AnimaWheelLinkScaleMonitor : Object;
	static public var s_SignupNotificationsScaleMonitor : Object;
	static public var s_CompassScaleMonitor : Object;
	static public var s_PvPMiniScoreboardScaleMonitor : Object;
	static public var s_UltimateAbilityScaleMonitor : Object;
	static public var s_TopMenuAlignmentMonitor : Object;
	static public var s_XPBarAlignmentMonitor : Object;
	static private var s_RegisteredModules : Object;

	public function HUDController();

	static public function SlotLoginStateChanged(state:Number);

	static public function RegisterModule(name:String, movie:MovieClip) : Void;

	static public function GetHidePosition2(realPos:Rectangle) : Rectangle;

	static public function GetHidePosition(realPos:Rectangle) : Rectangle;

	static public function DeregisterModule(name:String) : Void;

	static public function GetModule(name:String) : MovieClip;

	static private function UpdateResolutionScale() : Void;

	private function onResize() : Void;

	static private function SetModulePos(movie:MovieClip, x:Number, y:Number, hideOffsetX:Number, hideOffsetY:Number) : Void;

	static private function Layout() : Void;

	static public function RestoreDefaultPositions() : Void;

}
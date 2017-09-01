import flash.external.*;
import com.Utils.Signal;
import com.Utils.Archive;
intrinsic class com.GameInterface.GUIModuleIF extends com.GameInterface.GUIModuleIFBase
{
	public var SignalActivated : Signal;
	public var SignalDeactivated : Signal;
	public var SignalStatusChanged : Signal;
	static private var m_WatchedModules : Object;

	static public function FindModuleIF(name:String) : GUIModuleIF;

	private function GUIModuleIF(name:String);

	static public function OnModuleStatusChanged(name:String, isActive:Boolean) : Void;

}
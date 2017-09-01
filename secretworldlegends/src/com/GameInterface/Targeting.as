import flash.external.ExternalInterface;
import com.Utils.Signal;
intrinsic class com.GameInterface.Targeting
{
	static private var m_ClassName : String;
	static public var SignalTargetChanged : Signal;
	static public var SignalTargetsTargetChanged : Signal;

	static public function GetTarget();

	static public function GetTargetsTarget();

}
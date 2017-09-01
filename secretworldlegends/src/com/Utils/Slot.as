import com.Utils.Signal;
import com.Utils.SignalGroup;
import mx.utils.Delegate;
intrinsic class com.Utils.Slot
{
	private var m_Callback : Function;
	private var m_Object : com.Utils.WeakPtr;
	public var m_SignalGroup : SignalGroup;
	public var m_Signal : Signal;

	public function Slot(signal:Signal, group:SignalGroup, callback:Function, object:Object);

	public function GetCallback() : Function;

	public function GetObject() : Object;

	private function DisconnectSelf() : Void;

}
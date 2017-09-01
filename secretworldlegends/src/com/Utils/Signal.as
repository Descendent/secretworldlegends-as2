import com.Utils.Slot;
import com.Utils.SignalGroup;
intrinsic class com.Utils.Signal
{
	private var m_EventList : Array;

	public function Signal();

	public function Connect() : com.Utils.Slot;

	public function Disconnect(callback:Function) : Boolean;

	public function IsSlotConnected(callback:Function) : Boolean;

	public function DisconnectSlot(slot:Slot) : Boolean;

	public function Emit() : Void;

	public function Empty() : Boolean;

}
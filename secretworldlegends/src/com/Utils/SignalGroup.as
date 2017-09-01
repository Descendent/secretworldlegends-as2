import com.Utils.Slot;
intrinsic class com.Utils.SignalGroup
{
	private var m_Connections : Array;

	public function SignalGroup();

	public function DisconnectAll();

	public function AddSlot(slot:Slot);

	public function RemoveSlot(slot:Slot);

}
import com.Utils.SignalGroup;
intrinsic class com.Utils.UnitTests
{
	static private var m_WeakList : com.Utils.WeakList;
	static private var m_NormalList : Array;

	public function UnitTests();

	public function TestWeakList() : Void;

	static private function StripList();

	static private function SlotWeakListObjDied(index:Number, userData);

}
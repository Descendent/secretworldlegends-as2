import com.Utils.WeakPtr;
import mx.utils.Delegate;
intrinsic class com.Utils.WeakList
{
	public var SignalObjectDied : com.Utils.Signal;
	private var m_List : Array;
	private var m_ObjDiedDelegate : Object;

	public function WeakList();

	public function PushBack(obj) : Number;

	public function Insert(pos:Number, obj) : Void;

	public function Remove(index:Number);

	public function Clear() : Void;

	public function GetLength() : Number;

	public function GetObject(index:Number);

	public function GetUserData(index:Number);

	public function toString() : String;

	private function OnObjectDied(ptr:com.Utils.WeakPtr);

}
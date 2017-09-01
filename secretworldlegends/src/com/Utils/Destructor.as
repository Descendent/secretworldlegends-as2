import mx.utils.Delegate;
intrinsic class com.Utils.Destructor
{
	public var SignalDying : com.Utils.Signal;
	static private var s_GuardList : Array;
	private var m_Object : Object;

	public function Destructor();

	public function Clear() : Void;

	public function Set(obj);

	public function Get();

}
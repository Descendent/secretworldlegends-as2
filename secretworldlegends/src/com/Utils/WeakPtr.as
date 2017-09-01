intrinsic dynamic class com.Utils.WeakPtr
{
	public function WeakPtr(obj);

	public function Set(obj) : Void;

	public function Get();

	public function OnObjectDied(ptr:com.Utils.WeakPtr) : Void;

}
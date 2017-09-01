intrinsic class com.GameInterface.MathLib.Vector3
{
	public var x : Number;
	public var y : Number;
	public var z : Number;

	public function Vector3(i_x:Number, i_y:Number, i_z:Number);

	public function Len() : Number;

	public function Normalize(length:Number);

	static public function Add(v1:Vector3, v2:Vector3) : Vector3;

	static public function Sub(v1:Vector3, v2:Vector3) : Vector3;

	static public function Interpolate(v1:Vector3, v2:Vector3, value:Number) : Vector3;

}
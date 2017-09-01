intrinsic class com.Utils.ID32
{
	public var m_Type : Number;
	public var m_Instance : Number;

	public function ID32();

	public function Equal(other:ID32) : Boolean;

	public function IsNull() : Boolean;

	public function IsNpc() : Boolean;

	public function IsPlayer() : Boolean;

	public function IsSimpleDynel() : Boolean;

	public function IsDestructible() : Boolean;

	public function toString() : String;

	public function GetType() : Number;

	public function GetInstance() : Number;

	public function SetType(type:Number) : Void;

	public function SetInstance(instance:Number) : Void;

}
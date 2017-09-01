import com.Utils.Signal;
intrinsic class com.GameInterface.DistributedValueBase
{
	public var SignalChanged : Signal;

	public function DistributedValueBase(name:String);

	public function SetName(name:String);

	public function GetName() : String;

	static public function AddVariable(name:String, value, isPeristent:Boolean) : Void;

	static public function DeleteVariable(name:String) : Boolean;

	static public function DoesVariableExist(name:String) : Boolean;

	static public function GetMinMaxValues(variableName:String) : Array;

	static public function SetDValue(name:String, value) : Void;

	static public function GetDValue(name:String);

	public function GetValue();

	public function SetValue(value) : Void;

	static public function SetDefaultDValue(variableName:String, value) : Void;

	static public function GetDefaultDValue(variableName:String);

	static public function GetVariableCategory(name:String) : Number;

	public function Observe(variableName:String) : Void;

	public function Forget(variableName:String) : Void;

	public function ObserveAll() : Void;

	public function ForgetAll() : Void;

}
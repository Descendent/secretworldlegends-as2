intrinsic class com.Utils.Format
{
	public function Format(formatStr:String);

	public function AddData(data);

	public function GetString() : String;

	static public function Printf(formatStr:String) : String;

	static public function FormatNumeric(number:Number) : String;

}
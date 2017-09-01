intrinsic class com.Utils.LDBFormat
{
	public function LDBFormat(formatStr:String);

	public function AddData(data);

	public function GetString() : String;

	static public function Printf(formatStr:String) : String;

	static public function LDBGetText(category, instance) : String;

	static public function Translate(text:String) : String;

	static public function GetCurrentLanguageCode() : String;

}
intrinsic class com.GameInterface.HTMLFont
{
	public var m_Color : Number;
	public var m_Size : Number;
	public var m_Family : String;
	public var m_Style : String;
	public var m_Bold : Boolean;
	public var m_Italic : Boolean;
	public var m_Underline : Boolean;
	public var m_Kerning : Boolean;
	public var m_WaitOnScreen : Number;
	public var m_Speed : Number;
	public var m_FlyingDirection : Number;

	public function HTMLFont();

	public function SetColor(rgb:Number);

	public function SetWaitOnScreen(numSeconds:Number);

	public function SetSpeed(speed:Number);

	public function SetFlyingDirection(flyingDirection:Number);

	public function SetSize(fontSize:String);

	public function SetStyle(fontStyle:String);

	public function SetFamily(fontFamily:String);

}
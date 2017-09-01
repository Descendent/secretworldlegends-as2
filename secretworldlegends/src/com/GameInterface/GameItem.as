import com.Utils.ID32;
intrinsic class com.GameInterface.GameItem
{
	public var m_iconID : Number;
	public var m_iconType : Number;
	public var m_name : String;
	public var m_color : String;
	public var m_descriptionText : String;
	public var m_iconURL : String;
	public var m_type : String;
	public var m_level : Number;
	public var m_cashPrice : Number;
	public var m_hasLoadedIcon : Boolean;

	public function GameItem(name:String, descriptionText:String);

	public function GetIconID() : Number;

	public function GetIconType() : Number;

	public function GetIconURL() : String;

	public function GetName() : String;

	public function GetDescriptionText() : String;

	public function GetCashPrice() : Number;

	public function GetLevel() : Number;

	public function GetColor() : String;

	public function GetType() : String;

	public function HasLoadedIcon() : Boolean;

	public function SetHasLoadedIcon(hasLoaded:Boolean) : Void;

	public function SetIconURL(iconURL:String) : Void;

}
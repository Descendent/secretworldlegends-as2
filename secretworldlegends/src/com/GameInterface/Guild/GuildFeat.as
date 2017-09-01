intrinsic class com.GameInterface.Guild.GuildFeat
{
	public var m_iconHandle : Number;
	public var m_name : String;
	public var m_descriptionText : String;
	public var m_modificationText : String;
	public var m_iconURL : String;
	public var m_hasLoadedIcon : Boolean;

	public function GuildFeat(iconHandle:Number, name:String, descriptionText:String, modificationText:String);

	public function GetIconHandle() : Number;

	public function GetIconURL() : String;

	public function GetName() : String;

	public function GetDescriptionText() : String;

	public function GetModificationText() : String;

	public function HasLoadedIcon() : Boolean;

	public function SetHasLoadedIcon(hasLoaded:Boolean) : Void;

	public function SetIconURL(iconURL:String) : Void;

}
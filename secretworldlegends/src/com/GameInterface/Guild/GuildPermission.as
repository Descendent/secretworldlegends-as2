intrinsic class com.GameInterface.Guild.GuildPermission
{
	public var m_permissionId : Number;
	public var m_permissionText : String;

	public function GuildPermission(permissionId:Number, permissionText:String);

	public function GetPermissionID() : Number;

	public function GetPermissionText() : String;

}
intrinsic class com.GameInterface.Guild.GuildRank
{
	public var m_rankNr : Number;
	public var m_name : String;
	public var m_access : Number;

	public function GuildRank(rankNr:Number, name:String, access:Number);

	public function GetName() : String;

	public function GetRankNr() : Number;

	public function GetAccess() : Number;

	public function HasAccess(accessID:Number) : Boolean;

}
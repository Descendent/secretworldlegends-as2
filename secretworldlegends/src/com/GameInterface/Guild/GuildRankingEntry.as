intrinsic class com.GameInterface.Guild.GuildRankingEntry
{
	public var m_guildName : String;
	public var m_rank : Number;
	public var m_lastRank : Number;
	public var m_renownAmount : Number;
	public var m_renownLevel : Number;
	public var m_memberCount : Number;
	public var m_focus : String;

	public function GuildRankingEntry(guildName:String, rank:Number, lastRank:Number, renownAmount:Number, renownLevel:Number, memberCount:Number, focus:String);

	public function GetGuildName() : String;

	public function GetRank() : Number;

	public function GetLastRank() : Number;

	public function GetRenownAmount() : Number;

	public function GetMemberCount() : Number;

	public function GetFocus() : String;

	public function GetRenownLevel() : Number;

	public function GetRankChange() : String;

}
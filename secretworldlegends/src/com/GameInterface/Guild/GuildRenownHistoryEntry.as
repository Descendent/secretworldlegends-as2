intrinsic class com.GameInterface.Guild.GuildRenownHistoryEntry
{
	public var m_glory : Number;
	public var m_valor : Number;
	public var m_artistry : Number;
	public var m_memberCount : Number;

	public function GuildRenownHistoryEntry(glory:Number, valor:Number, artistry:Number, memberCount:Number);

	public function GetTotalRenown() : Number;

	public function GetTotalRenownAverage() : Number;

	public function GetGloryRenown() : Number;

	public function GetGloryRenownAverage() : Number;

	public function GetValorRenown() : Number;

	public function GetValorRenownAverage() : Number;

	public function GetArtistryRenown() : Number;

	public function GetArtistryRenownAverage() : Number;

}
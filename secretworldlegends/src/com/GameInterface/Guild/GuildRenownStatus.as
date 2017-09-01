intrinsic class com.GameInterface.Guild.GuildRenownStatus
{
	public var m_glory : Number;
	public var m_valor : Number;
	public var m_artistry : Number;
	public var m_totalLastWeek : Number;
	public var m_totalRanking : Number;
	public var m_valorRanking : Number;
	public var m_gloryRanking : Number;
	public var m_artistryRanking : Number;
	public var m_totalRankingLastWeek : Number;

	public function GuildRenownStatus(glory:Number, valor:Number, artistry:Number, totalLastWeek:Number, totalRanking:Number, gloryRanking:Number, valorRanking:Number, artistryRanking:Number, totalRankingLastWeek:Number);

	public function GetTotalRenown() : Number;

	public function GetGloryRenown() : Number;

	public function GetValorRenown() : Number;

	public function GetArtistryRenown() : Number;

	public function GetTotalRenownLastWeek() : Number;

	public function GetTotalRanking() : Number;

	public function GetGloryRanking() : Number;

	public function GetValorRanking() : Number;

	public function GetArtistryRanking() : Number;

	public function GetTotalRankingLastWeek() : Number;

}
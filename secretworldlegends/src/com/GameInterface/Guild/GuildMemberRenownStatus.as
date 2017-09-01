intrinsic class com.GameInterface.Guild.GuildMemberRenownStatus
{
	public var m_glory : Number;
	public var m_valor : Number;
	public var m_artistry : Number;
	public var m_totalLastWeek : Number;
	public var m_averageGlory : Number;
	public var m_averageValor : Number;
	public var m_averageArtistry : Number;
	public var m_averageTotalLastWeek : Number;

	public function GuildMemberRenownStatus(glory:Number, valor:Number, artistry:Number, totalLastWeek:Number, averageGlory:Number, averageValor:Number, averageArtistry:Number, averageTotalLastWeek:Number);

	public function GetTotalRenown() : Number;

	public function GetGloryRenown() : Number;

	public function GetValorRenown() : Number;

	public function GetArtistryRenown() : Number;

	public function GetTotalRenownLastWeek() : Number;

	public function GetTotalRenownAverage() : Number;

	public function GetGloryRenownAverage() : Number;

	public function GetValorRenownAverage() : Number;

	public function GetArtistryRenownAverage() : Number;

	public function GetAverageTotalLastWeek() : Number;

}
import com.Utils.Signal;
import com.GameInterface.Guild.*;
intrinsic class com.GameInterface.Guild.Guild extends com.GameInterface.Guild.GuildBase
{
	static private var m_Instance : Guild;
	private var m_RankingsWindowOpen : Boolean;
	private var CUSTOM_GOVERNMENT : Number;

	static public function GetInstance() : Guild;

	public function ToggleRankingsWindow();

	public function SetRankingsWindowOpen(isOpen:Boolean);

	public function UpdateGuildInfoData(newName:String, newMessageOfTheDay:String, newRecruitment:Number, newGoverningform:Number, updatePermissions:Boolean, newRankName1:String, newRankPermissions1:Number, newRankName2:String, newRankPermissions2:Number, newRankName3:String, newRankPermissions3:Number, newRankName4:String, newRankPermissions4:Number, newRankName5:String, newRankPermissions5:Number);

	public function FetchGuildRankings();

	public function FetchNextGuildRankingsUpdateTime();

	public function PromoteMembers(memberInstanceArray:Array);

	public function DemoteMembers(memberInstanceArray:Array);

	public function KickMembers(memberInstanceArray:Array);

	public function SetName(newName:String);

	public function SetMessageOfTheDay(newMotd:String);

	public function GetPvPPoints() : Number;

	public function SetRecruitmentID(newRecruitmentID:Number);

	public function SetGoverningformID(newGoverningformID:Number);

	public function GetGuildGoverningForm() : String;

	public function GetGuildRecruitmentType() : Array;

	public function GetRankName() : String;

	public function GetMemberRank() : GuildRank;

	public function GetRankID() : Number;

	public function GetMaxRank() : Number;

	public function GetRankArray() : Array;

	public function GetGuildPermissions() : Array;

	public function IsValorRenownCapped();

	public function IsGloryRenownCapped();

	public function IsArtistryRenownCapped();

	public function GetCurrentHistoryEntry() : GuildRenownHistoryEntry;

	public function GetLastHistoryEntry() : GuildRenownHistoryEntry;

	public function GetHighestHistoryEntry() : GuildRenownHistoryEntry;

	public function GetAverageHistoryEntry() : GuildRenownHistoryEntry;

	public function GetGuildRenownStatus() : GuildRenownStatus;

	public function GetGuildMemberRenownStatus() : GuildMemberRenownStatus;

	public function GetRewardsForLevel(level:Number) : Array;

	public function GetNumRewardLevels() : Number;

	public function GetTotalRankings();

	public function GetValorRankings();

	public function GetGloryRankings();

	public function GetArtistryRankings();

	public function BookCitySpot(playfieldID:Number) : Void;

	public function GetGuildCityPlayfieldID() : Number;

	public function GetGuildCityPlayfieldInstance() : Number;

	public function GetGuildFeats() : Array;

	public function CanChangeName() : Boolean;

	public function CanChangeMessageOfTheDay() : Boolean;

	public function CanChangeRecruitment() : Boolean;

	public function CanChangeGoverningform() : Boolean;

	public function CanKick() : Boolean;

	public function CanPromote() : Boolean;

	public function CanDemote() : Boolean;

	public function GetGold() : Number;

	public function GetSilver() : Number;

	public function GetCopper() : Number;

	public function GetTin() : Number;

	public function GetMembers() : Array;

	public function SetMemberSelected(memberID:Number, isSelected:Boolean) : Void;

	public function TrimString(str:String) : String;

	public function GetBool(str:String) : Boolean;

}
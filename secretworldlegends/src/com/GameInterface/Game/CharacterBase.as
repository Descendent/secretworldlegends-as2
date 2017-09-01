import com.GameInterface.MathLib.Vector3;
import com.Utils.ID32;
import com.Utils.Signal;
import flash.geom.Point;
import com.GameInterface.Game.Dynel;
intrinsic class com.GameInterface.Game.CharacterBase extends Dynel
{
	public var SignalTokenAmountChanged : Signal;
	public var SignalWeeklyTokenAmountChanged : Signal;
	public var SignalToggleCombat : Signal;
	public var SignalBuffAdded : Signal;
	public var SignalBuffUpdated : Signal;
	public var SignalBuffRemoved : Signal;
	public var SignalInvisibleBuffAdded : Signal;
	public var SignalInvisibleBuffUpdated : Signal;
	public var SignalPotionCooldown : Signal;
	public var SignalEndPotionCooldown : Signal;
	public var SignalDefensiveTargetChanged : Signal;
	public var SignalOffensiveTargetChanged : Signal;
	public var SignalStateAdded : Signal;
	public var SignalStateUpdated : Signal;
	public var SignalStateRemoved : Signal;
	public var SignalCommandStarted : Signal;
	public var SignalCommandEnded : Signal;
	public var SignalCommandAborted : Signal;
	public var SignalCharacterDied : Signal;
	public var SignalCharacterAlive : Signal;
	public var SignalCharacterRevived : Signal;
	public var SignalCharacterTeleported : Signal;
	public var SignalCharacterDestructed : Signal;
	public var SignalMemberStatusUpdated : Signal;
	public var SignalGainedWeaponLevel : Signal;
	static public var SignalCharacterEnteredReticuleMode : Signal;
	static public var SignalCharacterExitedReticuleMode : Signal;
	static public var SignalClientCharacterAlive : Signal;
	static public var SignalReloadTokens : Signal;
	static public var SignalClientCharacterOfferedLootBox : Signal;
	static public var SignalClientCharacterOpenedLootBox : Signal;
	public var m_StateList : Object;
	public var m_BuffList : Object;
	public var m_InvisibleBuffList : Object;
	public var m_BuffsInitialized : Boolean;

	static public function GetClientCharID() : ID32;

	static public function SwapAegisController(primary:Boolean, up:Boolean);

	static public function GetLevelForWeapon(weaponType:Number);

	static public function GetXPForWeaponLevel(level:Number);

	static public function UsePotion();

	static public function GetPotionCooldown();

	static public function BuyPotionRefill();

	static public function BuyDungeonKey();

	static public function BuyScenarioKey();

	static public function BuyLairKey();

	static public function IsInReticuleMode();

	static public function GetXPPerAP(level:Number);

	static public function GetXPPerSP(level:Number);

	static public function GetXPToNextAP();

	static public function GetXPToNextSP();

	static public function SetReticuleMode();

	static public function ExitReticuleMode();

	static public function RequestLootBoxUpdate();

	static public function SendLootBoxReply(openBox:Boolean);

	static public function SetNextWeaponActive(weaponSlotId:Number);

	static public function ToggleVanityMode(toggle:Boolean);

	static public function ClearDeathPenalty();

	public function CharacterBase(charId:com.Utils.ID32);

	public function GetTitle() : String;

	public function GetFirstName() : String;

	public function GetLastName() : String;

	public function GetGuildName() : String;

	public function GetDimensionName() : String;

	public function GetDifficulty() : Number;

	public function GetTokens(tokenID:Number);

	public function GetWeeklyTokens(tokenID:Number);

	public function GetTokenCapTweakName(tokenID:Number);

	public function GetWeeklyTokenCapTweakName(tokenID:Number);

	public function SetBaseAnim(name:String);

	public function GetDefensiveTarget() : ID32;

	public function GetOffensiveTarget() : ID32;

	public function ConnectToCommandQueue();

	public function GetCommandProgress() : Number;

	public function IsInCharacterCreation() : Boolean;

	public function IsInCombat() : Boolean;

	public function IsThreatened() : Boolean;

	public function IsNPC() : Boolean;

	public function IsBoss() : Boolean;

	public function IsPet() : Boolean;

	public function IsMerchant() : Boolean;

	public function IsBanker() : Boolean;

	public function IsRare() : Boolean;

	public function IsQuestTarget() : Boolean;

	public function IsGhosting() : Boolean;

	public function IsInCinematic() : Boolean;

	public function IsMember() : Boolean;

	public function IsLifetimeAccount() : Boolean;

	public function IsUnlimitedTrialAccount() : Boolean;

	public function IsClientChar() : Boolean;

	public function CanReceiveItems() : Boolean;

}
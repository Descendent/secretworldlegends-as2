import com.Utils.Signal;
intrinsic class com.GameInterface.PlayerDeath
{
	static public var SignalPlayerCharacterDead : Signal;
	static public var SignalPlayerCharacterAlive : Signal;
	static public var SignalResurrectRequest : Signal;
	static public var SignalNewAnimaWell : Signal;
	static public var SignalNoAnimaWell : Signal;
	static public var SignalAnimaWellIsClose : Signal;
	static public var SignalAnimaWellIsGone : Signal;
	static public var SignalTombstoneIsClose : Signal;
	static public var SignalTombstoneIsGone : Signal;
	static public var SignalRespawnWaveTimeUpdate : Signal;

	static public function Resurrect(respawnPointId:Number);

	static public function ResurrectGm();

	static public function ResurrectRequestAccept();

	static public function ResurrectRequestReject();

	static public function ClearGhosting();

	static public function GetAnimaWellArray() : Array;

	static public function PlayerIsDead() : Boolean;

	static public function DoWaveRespawn() : Boolean;

	static public function MouseButton(button:Number, down:Boolean);

	static public function SignupForRespawnPoint(respawnPointId:Number);

	static public function UpdateWaveRespawn(respawnPointId:Number);

	static public function CancelWaveRespawn(respawnPointId:Number);

	static public function DeathWindowClosed();

	static public function DeathWindowOpened();

}
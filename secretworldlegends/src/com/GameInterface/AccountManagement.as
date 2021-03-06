﻿import com.Utils.Signal;
intrinsic class com.GameInterface.AccountManagement
{
	public var m_Dimensions : Array;
	public var m_Characters : Array;
	public var SignalLoginStateChanged : Signal;
	public var SignalCharacterNeedsNewName : Signal;
	public var SignalCharacterDataUpdate : Signal;
	public var SignalDimensionDataUpdate : Signal;
	public var SignalAurumUpdated : Signal;

	static public function GetInstance() : AccountManagement;

	public function GetLoginState() : Number;

	public function LoginAccount(loginName:String, loginPassword:String) : Void;

	public function CancelLogin() : Void;

	public function LogoutAccount() : Void;

	public function SelectCharacter(charId:Number) : Void;

	public function RotateCharacter(delta:Number) : Void;

	public function DeleteCharacter(charId:Number) : Boolean;

	public function EnterGame(charId:Number, dimensionId:Number) : Void;

	public function ShowAccountPage() : Void;

	public function CreateCharacter(dimensionId:Number) : Void;

	public function GetMaxCharSlots() : Number;

	public function RenameCharacter(charInstance:Number, nickName:String, firstName:String, lastName:String, hasCost:Boolean) : Void;

	public function QuitGame() : Number;

	public function IsSteamClient() : Boolean;

	public function BuyCharacterSlot() : Void;

	public function GetAurum() : Number;

}
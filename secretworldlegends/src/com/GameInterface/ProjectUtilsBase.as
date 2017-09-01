import com.Utils.ID32;
intrinsic class com.GameInterface.ProjectUtilsBase
{
	static public function SendBugreport(title:String, comment:String, bugCategory:String, includeScreenShot:Boolean, includeNPC:Boolean, includePlayer:Boolean, email:String);

	static public function CloseBugreport();

	static public function CloseLogoutWindow();

	static public function CancelLogout();

	static public function StartQuitGame();

	static public function QuitGame();

	static public function GetUint32TweakValue(tweakValueName:String) : Number;

	static public function GetTokenName(tokenID:Number) : String;

	static public function GetTokenDescription(tokenID:Number) : String;

	static public function GetTokenIcon(tokenID:Number) : String;

	static public function GetTokenAmount(tokenID:Number) : Number;

	static public function GetTokenIdArray() : Array;

	static public function BuyInventorySlots(inventoryID:ID32);

	static public function CalculateNextExpansionPrice(inventoryID:ID32);

	static public function GetNextExpansionToken(inventoryID:ID32);

	static public function GetNextExpansionSize(inventoryID:ID32);

	static public function GetInteractionType(dynelId:ID32) : Number;

	static public function SetInteractionDynel(dynelId:ID32) : Number;

}
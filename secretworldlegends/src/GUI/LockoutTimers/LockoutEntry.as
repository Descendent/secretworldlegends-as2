import gfx.core.UIComponent;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import com.GameInterface.Game.Character;
import com.GameInterface.SpellBase;
intrinsic class GUI.LockoutTimers.LockoutEntry extends UIComponent
{
	private var m_Name : TextField;
	private var m_Lockout : TextField;
	private var m_Character : Character;
	private var m_TimeInterval : Number;
	private var m_ResetHour : Number;
	private var m_ResetMinute : Number;
	private var m_ResetSecond : Number;
	private var m_TokenType : Number;
	private var m_MaxTokens : Number;
	private var m_LockoutBuffId : Number;
	private var m_TotalBuffTime : Number;

	public function LockoutEntry();

	private function configUI() : Void;

	private function onUnload() : Void;

	public function SetName(newName:String) : Void;

	public function SetLockoutBuff(buffId:Number);

	private function CheckLockoutBuff(buffId:Number) : Void;

	private function SlotBuffAdded(buffId:Number);

	private function SlotBuffRemoved(buffId:Number);

	private function ClearLockoutBuff();

	private function UpdateBuffTime();

	private function CalculateTimeString(totalSeconds) : String;

	public function SetToken(tokenType:Number, maxTokens:Number);

	public function UpdateTokenDisplay(tokenId:Number, newAmount:Number, oldAmount:Number);

	public function SetResetTime(resetHour:Number, resetMinute:Number, resetSecond:Number) : Void;

	private function UpdateResetTime() : Void;

	private function GetResetTimeRemaining() : String;

	private function GetNeedHours(currentDate:Date) : Number;

	private function GetNeedMinutes(currentDate:Date) : Number;

	private function GetNeedSeconds(currentDate:Date) : Number;

	private function ClearTimeInterval() : Void;

}
import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
import com.Utils.LDBFormat;
intrinsic class GUI.Bank.Views.Cash extends MovieClip
{
	private var m_Label : TextField;
	private var m_Character : Character;

	public function Cash();

	private function Init() : Void;

	public function SlotTokenAmountChanged(id:Number, newValue:Number, oldValue:Number) : Void;

}
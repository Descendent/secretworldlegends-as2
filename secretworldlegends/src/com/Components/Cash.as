import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.Utils.Text;
intrinsic class com.Components.Cash extends MovieClip
{
	public var SignalCashUpdated : Signal;
	private var m_Label : TextField;
	private var m_Character : Character;

	public function Cash();

	private function Init() : Void;

	public function SlotTokenAmountChanged(id:Number, newValue:Number, oldValue:Number) : Void;

}
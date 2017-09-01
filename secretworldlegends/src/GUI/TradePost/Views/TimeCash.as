import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
import com.Utils.LDBFormat;
import com.Utils.Text;
intrinsic class GUI.TradePost.Views.TimeCash extends MovieClip
{
	private var m_Label : TextField;
	private var m_Character : Character;

	public function TimeCash();

	private function Init() : Void;

	public function SlotTokenAmountChanged(id:Number, newValue:Number, oldValue:Number) : Void;

}
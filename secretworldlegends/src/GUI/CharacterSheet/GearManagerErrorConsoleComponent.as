import com.Utils.LDBFormat;
import gfx.controls.Button;
import com.Utils.Signal;
import gfx.core.UIComponent;
intrinsic class GUI.CharacterSheet.GearManagerErrorConsoleComponent extends UIComponent
{
	private var m_Headline : TextField;
	private var m_Body : TextField;
	private var m_OKButton : Button;
	public var SignalClicked : Signal;

	public function GearManagerErrorConsoleComponent();

	public function configUI();

	public function SetError(errorCode:Number);

	private function CloseComponentHandler(event:Object);

}
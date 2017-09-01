import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.TextInput;
import gfx.controls.DropdownMenu;
import gfx.controls.TextArea;
import gfx.controls.Label;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.DistributedValue;
import com.GameInterface.Guild.*;
intrinsic class GUI.CabalManagement.CreateCabal extends UIComponent
{
	private var m_CreateGuildHeader : Label;
	private var m_GuildNameLabel : Label;
	private var m_GuildNameTextInput : TextInput;
	private var m_GovernmentTypeLabel : Label;
	private var m_GovernmentTypeDropdown : DropdownMenu;
	private var m_CreateGuildGuideHeader : Label;
	private var m_CreateGuildGuideText : TextArea;
	private var m_CreateButtton : Button;

	private function configUI();

	private function RemoveFocus() : Void;

	private function SetLabels();

	public function CreatingGuild();

}
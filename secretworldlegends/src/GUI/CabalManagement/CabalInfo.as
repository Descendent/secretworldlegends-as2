import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
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
intrinsic class GUI.CabalManagement.CabalInfo extends UIComponent
{
	private var m_PopupOverlay : MovieClip;
	private var m_GeneralInfoHeader : Label;
	private var m_TotalMembersLabel : Label;
	private var m_TotalMembers : MovieClip;
	private var m_GuildNameLabel : Label;
	private var m_GuildNameTextInput : TextInput;
	private var m_GovernmentTypeLabel : Label;
	private var m_GovernmentType : MovieClip;
	private var m_GuildMessageHeader : Label;
	private var m_GuildMessageTextBox : TextArea;
	private var m_ApplyButton : Button;
	private var CUSTOM_GOVERNMENT : Number;
	private var CUSTOM : String;

	private function configUI();

	private function RemoveFocus() : Void;

	private function SetLabels();

	private function SetData();

	private function SlotGuildNameUpdated();

	private function SlotGoverningformUpdated();

	private function SlotGuildMessageUpdated();

	public function UpdateChanges();

}
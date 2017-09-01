import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.ButtonBar;
import gfx.controls.ViewStack;
import mx.utils.Delegate;
import com.Utils.Archive;
import flash.geom.Rectangle;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.DistributedValue;
import com.GameInterface.Guild.*;
intrinsic class GUI.CabalManagement.CabalManagement extends UIComponent
{
	private var m_CloseButton : Button;
	private var m_Background : MovieClip;
	private var m_Title : TextField;
	private var m_GuildName : TextField;
	private var m_ButtonBar : ButtonBar;
	private var m_Divider : MovieClip;
	private var m_ViewStack : ViewStack;
	private var m_LeaveButton : Button;

	public function CabalManagement();

	private function configUI();

	private function SlotGuildCreated();

	private function SlotGuildNameUpdated();

	private function InitializeTabs();

	private function CloseWindow();

	private function LeaveGuild();

	private function RemoveSelection() : Void;

	private function SlotStartDrag();

	private function SlotStopDrag();

}
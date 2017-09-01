import gfx.controls.ListItemRenderer;
import gfx.controls.CheckBox;
import com.GameInterface.Utils;
import com.GameInterface.Guild.*;
import com.Utils.LDBFormat;
intrinsic class GUI.CabalManagement.PermissionsListItemRenderer extends ListItemRenderer
{
	private var _disableFocus : Boolean;
	public var m_ID : String;
	public var m_CheckBox1 : CheckBox;
	public var m_CheckBox2 : CheckBox;
	public var m_Name1 : TextField;
	public var m_Name2 : TextField;

	private function PermissionsListItemRenderer();

	public function setData(data:Object) : Void;

	private function updateAfterStateChange() : Void;

}
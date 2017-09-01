import gfx.controls.ListItemRenderer;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
import com.Utils.Colors;
intrinsic class GUI.CabalManagement.LogListItemRenderer extends ListItemRenderer
{
	private var _disableFocus : Boolean;
	public var m_Time : TextField;
	public var m_Type : TextField;
	public var m_Activity : TextField;

	private function LogListItemRenderer();

	public function setData(data:Object) : Void;

	private function updateAfterStateChange() : Void;

}
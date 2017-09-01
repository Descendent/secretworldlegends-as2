import gfx.controls.ListItemRenderer;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
import com.Utils.Colors;
intrinsic class GUI.ScenarioInterface.EventListItemRenderer extends ListItemRenderer
{
	private var _disableFocus : Boolean;
	public var m_Name : TextField;
	public var m_Description : TextField;
	public var m_Background : MovieClip;
	static private var COLOR_NONE : Object;
	static private var COLOR_GREEN : Object;
	static private var COLOR_YELLOW : Object;
	static private var COLOR_RED : Object;

	private function EventListItemRenderer();

	public function setData(data:Object) : Void;

}
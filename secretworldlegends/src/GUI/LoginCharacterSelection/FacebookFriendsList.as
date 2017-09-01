import com.GameInterface.ProjectUtils;
import com.Utils.LDBFormat;
import gfx.core.UIComponent;
intrinsic class GUI.LoginCharacterSelection.FacebookFriendsList extends UIComponent
{
	static private var DEFAULT_LIST_HEIGHT : Number;
	static private var DEFAULT_LIST_WIDTH : Number;
	static private var SCROLL_WHEEL_SPEED : Number;
	private var m_TitleTextField : TextField;
	private var m_Background : MovieClip;
	private var m_ListContainer : MovieClip;
	private var m_ScrollBar : MovieClip;
	private var m_ScrollBarPosition : Number;

	public function FacebookFriendsList();

	private function configUI() : Void;

	public function SetFriendsList(list:Array) : Void;

	private function onMouseWheel(delta:Number) : Void;

}
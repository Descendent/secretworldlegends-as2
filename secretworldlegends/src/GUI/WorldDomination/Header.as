import com.GameInterface.DistributedValue;
import com.GameInterface.LoreBase;
import com.Utils.LDBFormat;
import gfx.core.UIComponent;
import gfx.controls.Button;
import flash.geom.Rectangle;
intrinsic class GUI.WorldDomination.Header extends UIComponent
{
	static private var TITLE : String;
	static private var TEXT_SIZE_PERCENTAGE : Number;
	static private var MAX_CLOSE_BUTTON_SIZE : Number;
	static private var CLOSE_BUTTON_SCALE : Number;
	static private var UNDERLINE_ALPHA : Number;
	private var m_Background : MovieClip;
	private var m_TitleTextField : TextField;
	private var m_HelpButton : Button;
	private var m_CloseButton : Button;
	private var m_Underline : MovieClip;

	public function Header();

	private function configUI() : Void;

	public function Layout() : Void;

	private function HelpButtonCLickedEventHandler() : Void;

	public function CloseWorldDomination() : Void;

}
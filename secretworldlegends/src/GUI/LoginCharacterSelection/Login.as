import com.GameInterface.AccountManagement;
import com.GameInterface.DistributedValue;
import com.GameInterface.Utils;
import com.GameInterface.ProjectUtils;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.Utils.Colors;
import flash.geom.Rectangle;
import gfx.core.UIComponent;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import GUIFramework.SFClipLoader;
import com.Utils.ID32;
intrinsic dynamic class GUI.LoginCharacterSelection.Login extends UIComponent
{
	static private var NAVIGATION_BAR_GAP : Number;
	static private var TEXT_INPUT_DEFAULT_STROKE_COLOR : Number;
	static private var TEXT_INPUT_HIGHLIGHT_STROKE_COLOR : Number;
	public var visibleRect : flash.geom.Rectangle;
	private var m_Background : MovieClip;
	private var m_BackgroundTitle : MovieClip;
	private var m_NavigationBar : MovieClip;
	private var m_QuitButton : MovieClip;
	private var m_SettingsButton : MovieClip;
	private var m_AccountButton : MovieClip;
	private var m_CreditsButton : MovieClip;
	private var m_UsernameInput : MovieClip;
	private var m_PasswordInput : MovieClip;
	private var m_LoginButton : MovieClip;
	private var m_SteamPlayButton : MovieClip;
	private var m_SteamLinkButton : MovieClip;
	private var m_SteamCreditsButton : MovieClip;
	private var m_SteamQuitButton : MovieClip;
	private var m_SteamSettingsButton : MovieClip;
	private var m_KeyListener : Object;
	private var m_BackgroundInitialWidth : Number;
	private var m_BackgroundInitialHeight : Number;
	private var bgUrl : String;
	private var w : Number;
	private var h : Number;

	public function Login();

	private function KeyListenerEventHandler() : Void;

	private function configUI() : Void;

	private function onUnload() : Void;

	private function CheckInputFields() : Void;

	public function SlotButtonSelected(target:Object) : Void;

	private function LoginToCharacterSelection() : Void;

	private function TextFieldFocusEventHandler(event:Object) : Void;

	public function LayoutHandler() : Void;

	private function SetupBackground() : Void;

	private function AnimateBackground() : Void;

	private function VerticallyCenterButton(target:MovieClip) : Void;

	private function VerticallyCenterTextField(target:MovieClip) : Void;

}
import com.GameInterface.AccountManagement;
import com.GameInterface.CharacterData;
import com.GameInterface.DistributedValue;
import com.GameInterface.Browser.Facebook;
import com.GameInterface.ShopInterface;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.core.UIComponent;
import gfx.controls.ScrollingList;
import flash.geom.Rectangle;
import flash.geom.Point;
import mx.events.EventDispatcher;
import com.GameInterface.Utils;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import com.Utils.Text;
import GUI.LoginCharacterSelection.CharacterListItemRenderer;
import GUI.LoginCharacterSelection.DeleteCharacterDialog;
intrinsic dynamic class GUI.LoginCharacterSelection.CharacterSelection extends UIComponent
{
	static public var e_ModeCharSelect : Object;
	static public var e_ModeCreateChar : Object;
	static private var NAVIGATION_BAR_GAP : Number;
	private var m_Background : MovieClip;
	private var m_ScreenTitle : MovieClip;
	private var m_CharacterListWindow : MovieClip;
	private var m_CharacterList : MovieClip;
	private var m_LogoutButton : MovieClip;
	private var m_SettingsButton : MovieClip;
	private var m_AccountButton : MovieClip;
	private var m_NextButton : MovieClip;
	private var m_NavigationBar : MovieClip;
	private var m_DeleteCharacterDialog : MovieClip;
	private var m_KeyListener : Object;
	private var m_CharacterListReceived : Boolean;
	private var m_Mode : Number;
	private var m_SelectedServerId : Number;
	private var m_SelectedCharacterId : Number;
	private var m_FacebookPrompt : MovieClip;
	private var m_IsHit : Boolean;
	private var m_HitPos : Point;
	private var w : Number;
	private var h : Number;
	public var SignalCharacterListReceived : Signal;

	public function CharacterSelection();

	private function KeyListenerEventHandler() : Void;

	private function OnBackgroundMouseDown();

	private function OnBackgroundMouseUp();

	private function OnBackgroundMouseMove();

	private function configUI() : Void;

	public function CreateFacebookList(instanceName:String) : Void;

	private function onUnload() : Void;

	public function SlotButtonSelected(target:Object) : Void;

	private function NextButtonEventHandler() : Void;

	public function IsCharacterListReceived() : Boolean;

	private function SlotUpdateCharacters() : Void;

	private function SlotAurumUpdated() : Void;

	private function OpenConfirmDeleteDialog() : Void;

	private function BuyCharacterSlot() : Void;

	private function CenterConfirmDeleteDialog() : Void;

	private function CloseDeleteCharacterDialog() : Void;

	private function DeleteCharacter(password:String) : Void;

	private function SlotSelectCharacterPlay(event:Object) : Void;

	private function SlotSelectCharacter(event:Object) : Void;

	private function UpdateSelectedCharacter(index:Number) : Void;

	private function SetMode(mode:Number) : Void;

	public function GetMode() : Number;

	public function LayoutHandler() : Void;

	private function VerticallyCenterButton(target:MovieClip) : Void;

	private function SlotAskSignUpFacebook() : Void;

	private function ShowFacebookPrompt() : Void;

	private function SlotFacebookPromptSelection(loginSelected:Boolean) : Void;

}
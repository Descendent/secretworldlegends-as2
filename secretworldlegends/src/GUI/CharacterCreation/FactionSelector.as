import gfx.core.UIComponent;
import com.GameInterface.Game.Character;
import mx.transitions.easing.*;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import com.Utils.Signal;
import com.GameInterface.Utils;
import gfx.controls.Button;
intrinsic dynamic class GUI.CharacterCreation.FactionSelector extends UIComponent
{
	public var SignalFactionSelected : Signal;
	public var visibleRect : flash.geom.Rectangle;
	private var m_NavigationBar : MovieClip;
	private var m_BackButton : MovieClip;
	private var m_Title : MovieClip;
	private var m_PlayButtonIlluminati : MovieClip;
	private var m_PlayButtonTemplars : MovieClip;
	private var m_PlayButtonDragon : MovieClip;
	private var m_BgImg : MovieClip;
	private var m_Background : MovieClip;
	private var m_IlluminatiSelector : MovieClip;
	private var m_DragonSelector : MovieClip;
	private var m_TemplarsSelector : MovieClip;
	private var m_VideoPlayer : MovieClip;
	private var m_VideoPlayerIsOpen : Boolean;
	private var imgURL : String;
	private var distanceBetweenFactionSlots : Number;
	private var playButtonDistanceFromBottom : Number;
	private var w : Number;
	private var h : Number;

	public function FactionSelector();

	private function SetLabels();

	private function configUI();

	private function BackToCharacterSelection();

	private function OnSelectFaction(f:Object);

	private function Select(faction:Number);

	private function SetBackgroundImage();

	private function OpenFactionVideoPlayer(event:Object);

	private function CloseFactionVideoPlayer();

	private function RemoveVideoPlayer();

	private function VideoPlayerLayoutHandler();

	public function LayoutHandler();

}
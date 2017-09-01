import com.Utils.Format;
import gfx.core.UIComponent;
import gfx.controls.Button;
import com.Components.FCButton;
import GUI.CharacterCreation.CameraController;
import mx.events.EventDispatcher;
import mx.transitions.easing.*;
import GUI.CharacterCreation.HeadSectionHairMakeup;
import GUI.CharacterCreation.HeadSectionFacialTraits;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.Game.Character;
intrinsic dynamic class GUI.CharacterCreation.HeadSection extends UIComponent
{
	public var m_CameraController : CameraController;
	private var m_CloseSectionButton : Button;
	private var m_HeadSectionIcon : MovieClip;
	private var m_RandomizeHeadButton : FCButton;
	private var m_SectionBox : MovieClip;
	private var m_TitleHeadSection : MovieClip;
	private var m_TitleDescription : MovieClip;
	private var m_Content : MovieClip;
	private var m_ClickAreaCollapsed : MovieClip;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_IsUILoaded : Boolean;
	private var m_IsInitialized : Boolean;
	private var m_SectionBoxWidth : Number;
	private var m_SectionBoxWidthCollapsed : Number;
	private var m_SectionBoxHeightCollapsed : Number;
	private var m_ContentMargin : Number;
	private var m_SectionOriginalY : Number;
	private var m_BoxHeight : Number;
	public var m_SectionExtended : Boolean;
	private var m_FacialTraitsPanel : HeadSectionFacialTraits;
	private var m_HairMakeupPanel : HeadSectionHairMakeup;
	static private var PANEL_FACIAL : Object;
	static private var PANEL_MAKEUP : Object;
	private var m_CurrentPanel : Number;
	public var SignalCameraFocusChanged : Signal;
	public var SignalHeadUpdated : Signal;

	public function HeadSection();

	private function Initialize();

	private function LoadPanels();

	private function configUI();

	public function GetCurrentCameraFocus() : Number;

	private function RandomizeActiveSubSection();

	private function SetPanel(panel:Number);

	private function SelectPanel(e:Object);

	public function SetCharacterCreationIF(characterCreationIF:com.GameInterface.CharacterCreation.CharacterCreation);

	private function CollapseHeadSection();

	private function OnRollOverSectionBox();

	private function OnRollOutSectionBox();

	public function UpdateBoxHeight(boxHeight:Number);

	public function ExtendHeadSection();

	private function RandomizeHead();

	static public function RandomizeSlider(slider);

	static public function RandomizeList(list);

	private function HeadUpdated();

}
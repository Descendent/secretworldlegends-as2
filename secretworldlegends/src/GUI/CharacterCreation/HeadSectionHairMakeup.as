import com.Utils.Format;
import gfx.core.UIComponent;
import mx.transitions.easing.*;
import GUI.CharacterCreation.CameraController;
import GUI.CharacterCreation.HeadSection;
import gfx.controls.CheckBox;
import gfx.controls.TileList;
import gfx.controls.ScrollingList;
import com.Components.FCSlider;
import gfx.controls.Button;
import gfx.controls.Label;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.Game.Character;
intrinsic dynamic class GUI.CharacterCreation.HeadSectionHairMakeup extends UIComponent
{
	public var m_CameraController : CameraController;
	public var SignalBoxHeightChanged : Signal;
	public var SignalSetSurgeryData : Signal;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_IsUILoaded : Boolean;
	private var m_IsInitialized : Boolean;
	public var m_BoxHeight : Number;
	private var m_HairStyleTitle : Label;
	private var m_HairStyleScrollingList : ScrollingList;
	private var m_HairStyleBackground : MovieClip;
	private var m_HairColorList : TileList;
	private var m_HairstyleHorizontalDivider : MovieClip;
	private var m_FacialHairTitle : Label;
	private var m_FacialHairColorList : TileList;
	private var m_UseHairColorCheckbox : CheckBox;
	private var m_FacialHairHorizontalDivider : MovieClip;
	private var m_EyebrowTitle : Label;
	private var m_EyebrowSlider : FCSlider;
	private var m_EyeBrowHorizontalDivider : MovieClip;
	private var m_BeardMustacheTitle : Label;
	private var m_BeardMustacheScrollingList : ScrollingList;
	private var m_BeardMustacheBackground : MovieClip;
	private var m_BeardMustacheHorizontalDivider : MovieClip;
	private var m_MakeupGlamourTitle : Label;
	private var m_MakeupGlamourScrollingList : ScrollingList;
	private var m_MakeupGlamourBackground : MovieClip;
	private var m_MakeupGlamourColorList : TileList;
	private var m_IsHairColorsLinked : Boolean;

	public function HeadSectionHairMakeup();

	private function SetTextFormat();

	private function Initialize();

	private function UpdateServerMorphValues();

	private function configUI();

	public function Disable(state:Boolean);

	public function SetCharacterCreationIF(characterCreationIF:com.GameInterface.CharacterCreation.CharacterCreation);

	public function RandomizePanel() : Void;

	public function SlotGenderChanged(gender:Number);

	private function SetColorHair();

	private function SetBeard();

	private function SetHairStyle();

	private function SetMakeup();

	private function SetColorFacialHair();

	private function SetColorMakeupGlamour();

	public function LinkHairColors(link:Boolean) : Void;

	private function OnHairStyleChanged(event:Object);

	private function OnEyebrowChanged(event:Object);

	private function OnBeardChanged(event:Object);

	private function OnMakeupChanged(event:Object);

	private function OnRandomizeHairStyle();

	private function OnRandomizeHairColor();

	private function OnLinkHairFacialHairColor();

	private function OnRandomizeEyebrow();

	private function OnRandomizeBeardMustache();

	public function OnRandomizeMakeupGlamour();

	public function OnRandomizeMakeupGlamourColor();

	private function OnHairColorSelected(event:Object);

	private function OnFacialHairColorSelect(event:Object);

	private function OnMakeupColorSelect(event:Object);

	public function SlotHairStyleChanged(index:Number);

	public function SlotMakeupColorChanged(index:Number);

	public function SlotEyebrowChanged(index:Number);

	public function SlotBeardChanged(index:Number);

	public function SlotMakeupChanged(index:Number);

	public function SlotHairColorChanged(index:Number);

	public function SlotFacialHairColorChanged(index:Number);

}
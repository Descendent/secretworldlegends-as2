import com.Utils.Format;
import gfx.core.UIComponent;
import GUI.CharacterCreation.CameraController;
import mx.transitions.easing.*;
import gfx.controls.TileList;
import com.Components.FCSlider;
import gfx.controls.Button;
import gfx.controls.Label;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.Game.Character;
intrinsic dynamic class GUI.CharacterCreation.HeadSectionFacialTraits extends UIComponent
{
	public var m_CameraController : CameraController;
	public var SignalSetSurgeryData : Signal;
	private var m_FacialControllers : Object;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_IsUILoaded : Boolean;
	private var m_IsInitialized : Boolean;
	private var m_HeadTitle : Label;
	private var m_RandomizeHeadButton : Button;
	private var m_BaseHeadSlider : FCSlider;
	private var m_SkinColorHeader : Label;
	private var m_RandomizeSkinColorButton : Button;
	private var m_SkinColorList : TileList;
	private var m_EyesTitle : Label;
	private var m_RandomizeEyesButton : Button;
	private var m_EyesSlider : FCSlider;
	private var m_EyeColorList : TileList;
	private var m_NoseTitle : Label;
	private var m_RandomizeNoseButton : Button;
	private var m_NoseSlider : FCSlider;
	private var m_LipsTitle : Label;
	private var m_RandomizeLipsButton : Button;
	private var m_LipsSlider : FCSlider;
	private var m_JawTitle : Label;
	private var m_RandomizeJawButton : Button;
	private var m_JawSlider : FCSlider;

	private function configUI();

	public function HeadSectionFacialTraits();

	private function Initialize();

	public function Disable(state:Boolean);

	public function SetCharacterCreationIF(characterCreationIF:com.GameInterface.CharacterCreation.CharacterCreation);

	private function SetColorSkin();

	private function SetColorEye();

	private function SetupFacialSlider(feature:Number, titleFormat:TextFormat) : Void;

	private function UpdateFacialSliderLabel(feature:Number);

	public function RandomizePanel();

	private function OnRandomizeBaseHead();

	private function RandomizeFacialFeature(feature:Number);

	private function OnBaseHeadChanged(event:Object);

	private function OnRandomizeFacialFeature(event:Object);

	private function OnFacialSliderChanged(event:Object);

	private function UpdateServerMorphValues();

	private function OnSkinColorSelected(event:Object);

	private function OnEyeColorSelected(event:Object);

	public function SlotGenderChanged(gender:Number);

	public function SlotBaseHeadChanged(index:Number);

	public function SlotSkinColorChanged(index:Number);

	public function SlotEyeColorChanged(index:Number);

	public function SlotFacialFeatureChanged(feature:Number, value:Number);

}
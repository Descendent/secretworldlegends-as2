import gfx.core.UIComponent;
import gfx.controls.Label;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.Tooltip.*;
import GUI.CharacterCreation.CameraController;
intrinsic dynamic class GUI.CharacterCreation.OutfitSelector extends UIComponent
{
	private var m_Title : Label;
	private var m_NavigationBar : MovieClip;
	private var m_BackButton : MovieClip;
	private var m_ForwardButton : MovieClip;
	private var m_HelpIcon : MovieClip;
	private var m_OutfitSelectBox : MovieClip;
	private var m_HexGridPicker : MovieClip;
	public var SignalBack : com.Utils.Signal;
	public var SignalForward : com.Utils.Signal;
	private var m_CameraController : CameraController;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_CurrentFeature : Number;
	private var FEATURE_HAT : Number;
	private var FEATURE_ACCESSORY : Number;
	private var FEATURE_CHEST : Number;
	private var FEATURE_COAT : Number;
	private var FEATURE_LEGS : Number;
	private var FEATURE_SHOES : Number;

	public function OutfitSelector();

	private function configUI();

	private function SetLabels();

	private function CenterHorizontal(component:MovieClip);

	public function LayoutHandler();

	private function FeatureSelected(featureIndex:Number);

	private function ItemSelected(itemIndex:Number);

	private function GetEquipLocation(featureSlot:Number);

	private function BackToCharacterEditor();

	private function GoForward();

}
import com.Utils.Format;
import gfx.core.UIComponent;
import mx.utils.Delegate;
import flash.geom.Point;
import mx.transitions.easing.*;
import gfx.controls.TileList;
import com.GameInterface.DistributedValue;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import GUI.CharacterCreation.CameraController;
intrinsic dynamic class GUI.CharacterCreation.OutfitSection extends UIComponent
{
	private var m_CloseSectionButton : MovieClip;
	private var m_OutfitSectionIcon : MovieClip;
	private var m_RandomizeOutfitButton : MovieClip;
	private var m_SectionBox : MovieClip;
	private var m_TitleOutfitSection : MovieClip;
	private var m_TitleDescription : MovieClip;
	private var m_SelectedItemTitle : MovieClip;
	public var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_Content : MovieClip;
	private var m_ClickAreaCollapsed : MovieClip;
	private var m_SectionBoxWidth : Number;
	private var m_SectionBoxHeightCollapsed : Number;
	private var m_ContentMargin : Number;
	private var m_SectionOriginalY : Number;
	public var m_SectionExtended : Boolean;
	private var m_IsInitialized : Boolean;
	private var m_IsUILoaded : Boolean;
	private var m_Locations : Array;
	private var m_CurrentLocation : Number;
	public var SignalCameraFocusChanged : Signal;

	public function OutfitSection();

	public function GetCurrentCameraFocus() : Number;

	private function CollapseOutfitSection();

	private function OnRollOverSectionBox();

	private function OnRollOutSectionBox();

	public function ExtendOutfitSection();

	private function Initialize();

	private function configUI();

	public function SetCharacterCreationIF(characterCreationIF:com.GameInterface.CharacterCreation.CharacterCreation);

	private function OnLocationSelected(event:Object);

	private function OnClothingItemSelected(event:Object);

	private function RandomizeLocation(location:Number);

	private function OnRandomizeCurrentLocationButton();

	private function OnRandomizeOutfitButton();

	private function SetLocation(location:Number) : Void;

	private function SlotGenderChanged(gender:Number);

	private function UpdateClothingList();

	private function SlotClothingChanged(location:Number, index:Number);

}
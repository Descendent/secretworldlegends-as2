﻿import gfx.core.UIComponent;
import gfx.controls.ButtonGroup;
import gfx.controls.Button;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.CharacterCreation.CharacterCreation;
intrinsic dynamic class GUI.CharacterCreation.FeatureSelectBox extends UIComponent
{
	private var m_Header : TextField;
	private var m_Feature_0 : Button;
	private var m_Feature_1 : Button;
	private var m_Feature_2 : Button;
	private var m_Feature_3 : Button;
	private var m_Feature_4 : Button;
	private var m_Feature_5 : Button;
	private var m_Feature_6 : Button;
	private var m_SelectedFeature : Number;
	private var SignalFeatureSelected : Signal;
	private var m_CharacterCreationIF : CharacterCreation;
	private var m_Initialized : Boolean;
	private var m_FeatureGroup : ButtonGroup;
	private var m_DisableSurgery : Boolean;
	private var m_DisableBarber : Boolean;
	private var NUM_FEATURES : Number;

	public function FeatureSelectBox();

	private function configUI();

	private function DisableSurgery();

	private function DisableBarber();

	private function SelectedFeatureChanged(event:Object);

	private function FillFeatureButtons();

	private function SetLabels();

	public function SetCharacterCreationIF(characterCreationIF:CharacterCreation);

}
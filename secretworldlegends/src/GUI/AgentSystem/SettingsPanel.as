import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.CheckBox;
import com.Utils.Signal;
import com.Utils.LDBFormat;
intrinsic class GUI.AgentSystem.SettingsPanel extends UIComponent
{
	private var m_CloseButton : Button;
	private var m_AcceptButton : Button;
	private var m_Background : MovieClip;
	private var m_Header : TextField;
	private var m_TraitHeader : TextField;
	private var m_StatusHeader : TextField;
	private var m_CharismaBox : CheckBox;
	private var m_CharismaLabel : TextField;
	private var m_DexterityBox : CheckBox;
	private var m_DexterityLabel : TextField;
	private var m_IntelligenceBox : CheckBox;
	private var m_IntelligenceLabel : TextField;
	private var m_PowerBox : CheckBox;
	private var m_PowerLabel : TextField;
	private var m_ResilienceBox : CheckBox;
	private var m_ResilienceLabel : TextField;
	private var m_SupernaturalBox : CheckBox;
	private var m_SupernaturalLabel : TextField;
	private var m_InjuredBox : CheckBox;
	private var m_InjuredLabel : TextField;
	private var m_AwayBox : CheckBox;
	private var m_AwayLabel : TextField;
	private var m_UnownedBox : CheckBox;
	private var m_UnownedLabel : TextField;
	private var m_MaxLevelBox : CheckBox;
	private var m_MaxLevelLabel : TextField;
	private var m_EquippedBox : CheckBox;
	private var m_EquippedLabel : TextField;
	private var m_InitialFilters : Object;
	private var m_Initialized : Boolean;
	public var SignalClose : Signal;
	public var SignalApplySettings : Signal;
	static public var TRAIT_CAT_CHARISMA : Number;
	static public var TRAIT_CAT_DEXTERITY : Number;
	static public var TRAIT_CAT_INTELLIGENCE : Number;
	static public var TRAIT_CAT_POWER : Number;
	static public var TRAIT_CAT_RESILIENCE : Number;
	static public var TRAIT_CAT_SUPERNATURAL : Number;
	static public var TDB_TRAIT_CATEGORY : Number;

	public function SettingsPanel();

	private function configUI();

	private function SetLabels();

	public function SetData(filterObject:Object);

	private function InitializeBoxes();

	private function ApplySettings();

	private function ClosePanel();

	private function RemoveFocus();

}
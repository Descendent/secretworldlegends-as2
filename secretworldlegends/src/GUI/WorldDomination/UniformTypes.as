import com.Utils.GlobalSignal;
import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.Utils.Format;
import com.Utils.Signal;
import mx.utils.Delegate;
import com.GameInterface.Game.BuffData;
import com.GameInterface.Spell;
import com.GameInterface.Tooltip.TooltipInterface;
intrinsic class GUI.WorldDomination.UniformTypes extends MovieClip
{
	static public var PVP_MODE : String;
	static public var FVF_MODE : String;
	static public var HIGH_POWERED_WEAPONRY : String;
	static public var REINFORCED_ARMOR : String;
	static public var INTEGRATED_ANIMA_CONDUITS : String;
	static private var PVP_UNIFORM_TYPES_TITLE : String;
	static private var FVF_UNIFORM_TYPES_TITLE : String;
	static private var FVF_RADIO_GROUP : String;
	static private var TOTAL_BUFFS : Number;
	static private var BUFF_SCALE : Number;
	public var SignalControlSelectionChanged : Signal;
	public var m_HighPoweredWeaponryCheckBox : MovieClip;
	public var m_ReinforcedArmorCheckBox : MovieClip;
	public var m_IntegratedAnimaConduitsCheckBox : MovieClip;
	public var m_HighPoweredWeaponryRadioButton : MovieClip;
	public var m_ReinforcedArmorRadioButton : MovieClip;
	public var m_IntegratedAnimaConduitsRadioButton : MovieClip;
	private var m_UniformTypesTitle : TextField;
	private var m_UniformTypesBackground : MovieClip;
	private var m_PvPContainer : MovieClip;
	private var m_FvFContainer : MovieClip;
	private var m_HighPoweredWeaponryBuff : MovieClip;
	private var m_ReinforcedArmorBuff : MovieClip;
	private var m_IntegratedAnimaConduitsBuff : MovieClip;
	private var m_ControlsArray : Array;
	private var m_SelectionArray : Array;
	private var m_Mode : String;
	private var m_IsDisabled : Boolean;

	public function get mode() : String;
	public function set mode(value:String) : Void;

	public function get disabled() : Boolean;
	public function set disabled(value:Boolean) : Void;

	public function get selection() : Array;
	public function set selection(value:Array) : Void;


	public function UniformTypes();

	private function Init() : Void;

	private function ControlsClickEventHandler() : Void;

	private function BuffLoadCompleteHandler(target:MovieClip) : Void;

	private function Layout() : Void;

	public function SetValidRadioButtonUniforms(value:Number) : Void;

}
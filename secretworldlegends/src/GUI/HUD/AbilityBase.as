import com.Utils.Colors;
import com.GameInterface.Log;
import com.GameInterface.DistributedValue;
intrinsic class GUI.HUD.AbilityBase extends MovieClip
{
	static public var ABILITY : Number;
	static public var PASSIVE : Number;
	static public var FLAG_OUT_OF_RANGE : Number;
	static public var FLAG_NO_RESOURCE : Number;
	static public var FLAG_DISABLED : Number;
	static public var FLAG_CHANNELING : Number;
	static public var FLAG_MAX_MOMENTUM : Number;
	private var m_ColorObject : Object;
	public var m_Type : Number;
	private var m_IsEnabled : Boolean;
	private var m_Flags : Number;
	private var m_PrevState : Number;
	public var m_AuxilliaryFrame : MovieClip;
	public var m_EliteFrame : MovieClip;
	public var m_BuilderIcon : MovieClip;
	public var m_ConsumerIcon : MovieClip;
	private var m_OuterLine : MovieClip;
	private var m_InnerLine : MovieClip;
	private var m_CooldownLine : MovieClip;
	private var m_BackgroundOverlay : MovieClip;
	private var m_BackgroundGradient : MovieClip;
	private var m_Gloss : MovieClip;
	public var m_Background : MovieClip;
	private var m_Content : MovieClip;
	private var m_Moviecliploader : MovieClipLoader;
	private var m_Resources : Number;
	private var m_SpellId : Number;
	private var m_ResourceIconMonitor : DistributedValue;

	public function AbilityBase();

	public function Clear() : Void;

	public function createChildren() : Void;

	public function SetColor(colorLine:Number);

	public function SetSpellType(spellType);

	public function SetSpellId(spellId:Number) : Void;

	public function GetSpellId() : Number;

	public function SetIcon(path:String) : Void;

	public function SetBackgroundColor(show:Boolean);

	public function MergeFlags(flags:Number);

	private function ReplaceFlags(flags:Number);

	public function ClearFlags(flags:Number);

	public function HasFlags(flags:Number) : Boolean;

	private function UpdateVisuals();

	public function GetIcon() : MovieClip;

	public function SetType(type:Number);

	private function UpdateResourceIcons();

	public function SetResources(resources:Number);

	public function IsEnabled() : Boolean;

}
import com.Utils.ID32;
import com.GameInterface.Game.Character;
import com.Utils.LDBFormat;
import com.Utils.Text;
import flash.geom.Point;
intrinsic class GUI.DamageNumbers.DamageText
{
	public var m_Character : Character;
	public var m_DamageClip : MovieClip;
	public var m_ScreenOffset : Point;
	public var m_IsPlayer : Boolean;
	private var m_Text : String;
	public var m_OverrideText : String;
	public var m_StatId : Number;
	public var m_Damage : Number;
	public var m_Absorb : Number;
	public var m_AttackResultType : Number;
	public var m_AttackType : Number;
	public var m_AttackOffensiveLevel : Number;
	public var m_AttackDefensiveLevel : Number;
	public var m_Context : Number;
	public var m_Scale : Number;
	public var m_EffectType : Number;
	public var m_CombatLogFeedbackType : Number;
	private var m_NumHits : Number;
	static public var NEGATIVE_EFFECT : Number;
	static public var NEUTRAL_EFFECT : Number;
	static public var POSITIVE_EFFECT : Number;

	public function DamageText(character:Character);

	public function UpdateText();

	public function AddFontColor(text:String, color:String);

	public function UpdatePosition(scale:Number);

	public function SetVisible(visible:Boolean);

	public function AddScreenOffset(offset:Point);

	public function GetText();

	public function Equal(damageText:DamageText) : Boolean;

	public function Add(damageText:DamageText);

	public function IsShieldStat(statId:Number);

}
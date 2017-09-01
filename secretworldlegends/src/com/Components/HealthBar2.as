import com.GameInterface.Game.Dynel;
import com.GameInterface.Game.GroupElement;
import com.GameInterface.Game.Character;
import gfx.motion.Tween;
import mx.transitions.easing.*;
intrinsic class com.Components.HealthBar
{
	static public var STATTEXT_PERCENT : Number;
	static public var STATTEXT_NUMBER : Number;
	private var m_Dynel : Dynel;
	private var m_GroupElement : GroupElement;
	private var m_Character : Character;
	private var m_CurrentStatID : Number;
	private var m_MaxStatID : Number;
	private var m_Percent : Number;
	private var m_Max : Number;
	private var m_Current : Number;
	private var m_Text : TextField;
	private var m_Bar : MovieClip;
	private var m_AlwaysVisible : Boolean;
	private var m_ShowText : Boolean;
	private var m_TextType : Number;

	public function HealthBar();

	public function SetDynel(dynel:Dynel);

	public function SlotCharacterEntered();

	public function SlotCharacterExited();

	public function SetBarScale(xscale:Number, yscale:Number, textScale:Number);

	public function SetGroupElement(groupElement:GroupElement);

	public function SetCharacter(character:Character);

	private function ClearBar();

	private function SlotStatChanged(stat:Number, value:Number);

	private function SetMax(maxStat:Number, snap:Boolean) : Void;

	private function SetCurrent(stat:Number, snap:Boolean) : Void;

	private function UpdateStatText();

	private function UpdateStatBar(snap:Boolean);

	public function Hide();

	public function Show();

	public function SetShowText(showText:Boolean);

	public function SetTextType(textType:Number);

}
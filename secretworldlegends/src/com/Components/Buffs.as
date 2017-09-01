import com.GameInterface.Spell;
import com.Components.BuffComponent;
import com.GameInterface.Game.GroupElement;
import com.GameInterface.Game.BuffData;
import com.Utils.Signal;
import mx.utils.Delegate;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import com.GameInterface.Utils;
import com.GameInterface.Game.Character;
import com.Utils.ID32;
import gfx.core.UIComponent;
intrinsic class com.Components.Buffs extends UIComponent
{
	private var m_BuffList : Array;
	private var m_MovieClipLoader : MovieClipLoader;
	private var m_Direction : Number;
	private var SizeChanged : Signal;
	private var SignalBuffAdded : Signal;
	private var SignalBuffRemoved : Signal;
	private var m_UseTimers : Boolean;
	private var m_ShowCharges : Boolean;
	private var m_MaxPerLine : Number;
	private var m_NumLines : Number;
	private var m_Multiline : Boolean;
	static private var BUFF : Number;
	static private var DEBUFF : Number;
	static private var ALL : Number;
	private var m_ShowBuff : Boolean;
	private var m_ShowDebuff : Boolean;
	private var m_Character : Character;
	private var m_GroupElement : GroupElement;
	private var m_Width : Number;
	private var m_NeedSizeUpdate : Boolean;

	public function Buffs();

	public function SetWidth(width:Number);

	public function SetMultiline(multiline:Boolean) : Void;

	public function SetCharacter(character:Character);

	public function SetGroupElement(groupElement:GroupElement);

	public function ClearAllBuffs();

	public function SlotCharacterEntered();

	public function SlotCharacterExited();

	public function AddExistingBuffs();

	public function ShowTimers(show:Boolean);

	public function GetShowTimer() : Boolean;

	public function NoTimers();

	public function ShowCharges(show:Boolean);

	public function NoCharges();

	public function ShowBuffs(show:Boolean);

	public function ShowDebuffs(show:Boolean);

	public function SetDirectionDown();

	public function ClearBuffs(type:Number) : Void;

	public function ShowAllBuffs() : Void;

	public function GetBuffCount() : Number;

	public function AddBuff(buffData:BuffData);

	public function SlotBuffAdded(buffId:Number);

	public function SlotBuffRemoved(buffId:Number, casterId:Number);

	public function GetBuffClip(buffId) : BuffComponent;

	public function SetMaxPerLine(max:Number);

	public function BuffCompare(a:BuffComponent, b:BuffComponent) : Number;

	public function Layout();

}
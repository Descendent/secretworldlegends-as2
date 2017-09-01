import com.Utils.Signal;
import gfx.core.UIComponent;
import gfx.controls.Button;
import mx.utils.Delegate;
import com.GameInterface.Game.Character;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import com.GameInterface.Spell;
import com.GameInterface.Game.Shortcut;
intrinsic dynamic class GUI.SkillHive.SkillHiveBuyPanel extends UIComponent
{
	public var SignalBuyPressed : Object;
	public var SignalEquipPressed : Object;
	public var SignalUnEquipPressed : Object;
	public var SignalRefundPressed : Object;
	public var m_Character : Character;
	public var m_Token : Number;
	public var m_Cost : Number;
	public var m_FeatId : Number;
	public var m_SP : MovieClip;
	public var m_FirstButton : Button;
	public var m_Initialized : Boolean;
	public var m_IsTrained : Boolean;
	public var m_IsEquipped : Boolean;
	public var m_ShouldUnequip : Boolean;
	public var m_CanTrain : Boolean;
	public var m_CanEquip : Boolean;
	static private var PADDING : Number;

	public function SkillHiveBuyPanel();

	public function configUI();

	public function SlotFirstButtonClicked(event:Object);

	public function SetData(character:Character, cost:Number, token:Number, featId:Number, canTrain:Boolean);

	public function SetShouldUnequip(unequip:Boolean);

	public function Update(isTrained:Boolean, isRefundable:Boolean, spellId:Number, canTrain:Boolean);

	public function UpdateLayout();

	public function UpdateText();

	public function BuyAbility();

	public function RefundAbility();

	public function EquipAbility();

}
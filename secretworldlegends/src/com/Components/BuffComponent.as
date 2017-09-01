import com.Utils.Colors;
import com.Utils.ID32;
import mx.utils.Delegate;
import com.GameInterface.Utils;
import com.GameInterface.Game.BuffData;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DialogIF;
import com.GameInterface.DistributedValue;
import com.Utils.LDBFormat;
import com.GameInterface.Spell;
import gfx.controls.UILoader;
intrinsic class com.Components.BuffComponent extends MovieClip
{
	private var m_BuffData : BuffData;
	private var m_ShowCharges : Boolean;
	private var m_UseTimers : Boolean;
	private var m_IsPlayer : Boolean;
	private var m_TimeLeft : Number;
	private var m_CharacterID : ID32;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipOrientation : Number;
	private var m_Background : MovieClip;
	private var m_Border : MovieClip;
	private var m_Icon : UILoader;
	private var m_Timer : MovieClip;
	private var m_BuffCharge : MovieClip;
	private var m_CooldownIntervalID : Number;

	public function BuffComponent();

	public function SetShowCharges(showCharges:Boolean);

	public function SetUseTimers(useTimers:Boolean);

	public function SetIsPlayer(isPlayer:Boolean);

	public function SetTooltipOrientation(value:Number) : Void;

	public function SetCharacterID(characterID:ID32);

	public function GetHeight();

	public function GetWidth();

	public function GetBuffData();

	public function SetBuffData(buffData:BuffData);

	public function UpdateBuffData(buffData:BuffData) : Void;

	private function UpdateTimer();

	private function UpdateCharges();

	public function SetIcon(icon:ID32) : Void;

	public function UnloadIcon();

	public function GetIcon() : MovieClip;

	public function GetTimeLeft() : Number;

	public function TimerCallback();

	public function MakeTooltip(buffID:Number);

	public function MakeTooltipFloating();

	public function Remove();

	public function CloseTooltip();

	public function onMousePress(mouseBtnId:Number);

	public function onRollOver();

	public function onRollOut();

	public function onDragOut();

	public function CancelBuff();

	public function SlotCancelBuff(buttonId:Number);

}
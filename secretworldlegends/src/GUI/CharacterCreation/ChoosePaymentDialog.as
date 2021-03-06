﻿import gfx.controls.Button;
import gfx.controls.RadioButton;
import gfx.controls.ButtonGroup;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.Utils.Text;
import com.GameInterface.Game.Character;
intrinsic class GUI.CharacterCreation.ChoosePaymentDialog extends com.Components.WindowComponentContent
{
	private var m_CostLabel : TextField;
	private var m_Cost : TextField;
	private var m_CashLabel : TextField;
	private var m_CurrentCash : TextField;
	private var m_CancelButton : Button;
	private var m_ConfirmButton : Button;
	private var m_CashTokenClip : MovieClip;
	private var m_SelectedToken : Number;
	public var SignalConfirmPayment : Signal;
	public var SignalCancelPayment : Signal;
	public var m_CashCost : Number;
	private var m_ConfirmButtonSound : String;

	public function ChoosePaymentDialog();

	public function configUI();

	public function SlotCancel();

	public function SlotConfirm();

	public function SetCost(cost:Number);

	public function SetPlayerCash(cash:Number);

}
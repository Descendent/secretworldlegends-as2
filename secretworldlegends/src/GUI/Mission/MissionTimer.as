import com.Utils.Colors;
import mx.controls.gridclasses.DataGridColumn;
import mx.utils.Delegate;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import com.GameInterface.Utils;
import com.Utils.Destructor;
import com.GameInterface.Log;
intrinsic class GUI.Mission.MissionTimer extends MovieClip
{
	private var m_UpdateSpeed : Number;
	private var m_IntervalId : Number;
	private var m_ThrottleCounter : Number;
	private var m_EndTime : Number;
	private var textField : TextField;
	private var i_Back : MovieClip;
	private var m_MinWidth : Number;
	private var m_IsColorized : Boolean;
	private var m_StartThrottleAt : Number;
	private var m_ChriticalWarningAt : Number;
	private var m_Destructor : Destructor;
	private var m_IsSuccessOnCompletion : Boolean;
	private var m_TimeoutColor : Number;

	public function MissionTimer();

	/**
     * sets the timer and starts it
     * 
     * @param	timestamp:Numbing       the gametime when the timer completes
     * @param	firstWarning:Number     MS before end where the thing should start flashing
     * @param	criticalWarning:Number  MS before end where the timer changes color
     */
	public function SetTimer(timestamp:Number, firstWarning:Number, criticalWarning:Number);

	/**
     * sets a flag defining if the completed timer will result in success or fail (this will be used to determine) if the flashing missions at the end will flash green or red
     * 
     * @param	isSuccessOnCompletion:Boolean
     */
	public function SetSuccessType(isSuccessOnCompletion:Boolean) : Void;

	private function UpdateBorder();

	public function TimerCallback();

	static public function SlotInstanceDying(obj:Object);

}
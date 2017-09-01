intrinsic class com.Utils.Interpolator
{
	private var m_StartValue : Object;
	private var m_EndValue : Object;
	private var m_StartTime : Number;
	private var m_EndTime : Number;
	private var m_EaseFunction : Function;
	private var m_TargetObj : Object;
	private var m_TargetProperty : String;

	public function Interpolator();

	public function Start(duration:Number, startValue, endValue, ease:Function) : Void;

	public function SetEndValue(duration:Number, endValue, ease:Function) : Void;

	public function GetValue(progress:Number);

	public function GetTimeValue(time:Number);

	public function GetCurrentValue();

	public function GetStartValue();

	public function GetEndValue();

	public function SetTarget(object:Object, property:String);

	private function SlotFrameStarted() : Void;

}
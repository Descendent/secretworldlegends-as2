import com.GameInterface.Command;
import com.GameInterface.Game.Character;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import mx.utils.Delegate;
import gfx.core.UIComponent;
intrinsic class com.Components.CastBar extends UIComponent
{
	private var m_IntervalId : Number;
	private var m_Increments : Number;
	private var m_TotalFrames : Number;
	private var m_StopFrame : Number;
	private var m_ProgressBarType : Number;
	private var m_AbilityIsUninterruptable : Boolean;
	private var m_Character : Character;
	private var m_CastBar : MovieClip;
	private var m_InterruptBlocker : MovieClip;

	public function CastBar();

	public function SetCharacter(character:Character);

	public function SlotSignalCommandStarted(name:String, progressBarType:Number, uninterruptable:Boolean) : Void;

	public function ExecuteCallback() : Void;

	public function SlotSignalCommandEnded() : Void;

	public function SlotSignalCommandAborted() : Void;

	public function SlotStatChanged(statID:Number) : Void;

	public function ResizeHandler() : Void;

}
import com.GameInterface.MathLib.Vector3;
import com.GameInterface.Game.Camera;
import com.GameInterface.Game.Character;
import com.GameInterface.CharacterCreation.CharacterCreation;
import com.Utils.Interpolator;
import mx.transitions.easing.*;
intrinsic class GUI.CharacterCreation.CameraController
{
	static public var e_ModeBody : Object;
	static public var e_ModeFace : Object;
	static public var e_ModeTop : Object;
	static public var e_ModeLegs : Object;
	static public var e_ModeFeet : Object;
	private var m_CameraMinDistance : Number;
	private var m_CameraMaxDistance : Number;
	private var m_MinDistances : Array;
	private var m_MaxDistances : Array;
	private var m_CameraPosition : Vector3;
	private var m_TargetHeadPos : Vector3;
	private var m_TargetGroundPos : Vector3;
	private var m_CameraHeight : Interpolator;
	private var m_CameraDistance : Interpolator;
	private var m_IsAnimating : Boolean;
	private var m_IsInteractive : Boolean;
	private var m_AnimStartTime : Number;
	private var m_AnimEndTime : Number;
	private var m_LockPosUpdate : Boolean;

	public function CameraController(startZoomMode:Number);

	public function SetCameraPosition(pos:Vector3) : Void;

	public function SetLockPosUpdate(val:Boolean) : Void;

	public function UpdateTargetPositions(character:Character) : Void;

	public function SetZoomMode(mode:Number, animTime:Number) : Void;

	public function SetCameraHeight(height:Number) : Void;

	public function GetCameraHeight() : Number;

	public function PlaceCamera(camPos:Vector3, targetPos:Vector3, up:Vector3);

	public function FrameProcess();

	public function MouseWheel(delta:Number);

}
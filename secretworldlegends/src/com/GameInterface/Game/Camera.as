import com.Utils.Signal;
import com.GameInterface.MathLib.Vector3;
intrinsic class com.GameInterface.Game.Camera
{
	static public var m_Pos : Vector3;
	static public var m_AngleY : Object;
	static public var m_CinematicStripHeight : Object;
	static public var SignalCinematicActivated : Signal;

	static public function RunCameraPath(pathName:String, switchToDefaultCamWhenDone:Boolean, initialPosition:Number, targetPosition:Number) : Void;

	static public function PlaceCamera(posX:Number, posY:Number, posZ:Number, offsetX:Number, offsetY:Number, offsetZ:Number, upX:Number, upY:Number, upZ:Number) : Void;

	static public function SetFOV(fov:Number) : Void;

	static public function RequestCameraPosRotUpdates(startUpdates:Boolean) : Void;

	static public function GetZoom() : Number;

}
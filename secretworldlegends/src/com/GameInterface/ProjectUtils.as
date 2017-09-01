import flash.filters.DropShadowFilter;
import com.GameInterface.Game.Camera;
import com.GameInterface.DistributedValue;
import com.GameInterface.Log;
intrinsic class com.GameInterface.ProjectUtils extends com.GameInterface.ProjectUtilsBase
{
	static private var s_ResolutionScaleMonitor : Object;

	static public function SetMovieClipMask(mc:MovieClip, parent:MovieClip, overrideHeight:Number, overrideWidth:Number, nomask:Boolean) : MovieClip;

	static public function Show2DText(text:String, duration:Number, x:Number, y:Number, style:Number, align:String, fadeIn:Number, fadeOut:Number, transition:String) : Number;

	static public function Remove2DText(handle:Number);

}
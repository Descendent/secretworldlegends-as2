import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.Resource
{
	static public var SignalResourceChanged : Signal;

	static public function GetResourceAmount(resourceType:Number, targetID:ID32) : Number;

}
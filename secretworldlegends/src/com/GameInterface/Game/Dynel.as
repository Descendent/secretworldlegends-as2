import com.GameInterface.Game.DynelBase;
import com.GameInterface.Game.DynelFactory;
import com.GameInterface.MathLib.Vector3;
import com.Utils.ID32;
import com.Utils.Signal;
import flash.geom.Point;
import com.Utils.WeakList;
intrinsic class com.GameInterface.Game.Dynel extends DynelBase
{
	static public var s_DynelList : WeakList;

	public function Dynel(dynelID:ID32);

	static public function GetDynel(dynelID:ID32);

	static private function FindDynel(dynelID:ID32) : Dynel;

}
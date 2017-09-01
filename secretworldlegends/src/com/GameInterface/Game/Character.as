import com.GameInterface.Game.CharacterBase;
import com.GameInterface.Game.Dynel;
import com.GameInterface.MathLib.Vector3;
import com.Utils.ID32;
import com.Utils.Signal;
import flash.geom.Point;
import com.Utils.WeakList;
intrinsic class com.GameInterface.Game.Character extends CharacterBase
{
	public function Character(charID:ID32);

	static public function GetCharacter(charID:ID32) : Character;

	static public function GetClientCharacter() : Character;

	static public function ReInitializeClientCharacter();

}
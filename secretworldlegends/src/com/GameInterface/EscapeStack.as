import flash.external.ExternalInterface;
import com.GameInterface.EscapeStackNode;
intrinsic class com.GameInterface.EscapeStack
{
	static private var m_Stack : Array;

	static public function Push(node:EscapeStackNode);

	static public function OnEscapePressed();

}
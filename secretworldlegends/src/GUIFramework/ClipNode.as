import com.Utils.Signal;
intrinsic class GUIFramework.ClipNode
{
	public var SignalLoaded : Signal;
	public var m_Movie : MovieClip;
	public var m_ObjectName : String;
	public var m_ClipName : String;
	public var m_StretchToScreen : Boolean;
	public var m_DepthLayer : Number;
	public var m_SubDepth : Number;
	public var m_ModalLevel : Number;
	public var m_LoadArguments : Array;

	public function ClipNode(objecName:String, clipName:String, movie:MovieClip, stretchToScreen:Boolean, depthLayer:Number, subDepth:Number, loadArguments:Array);

	public function Compare(rhs:ClipNode) : Number;

	public function toString() : String;

}
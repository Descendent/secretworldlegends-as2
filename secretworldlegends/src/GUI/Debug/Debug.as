intrinsic class GUI.Debug.Debug
{
	static public var m_Instance : Number;

	static public function OpenDebugWindow();

	static public function TraceObject(path:String, depth:Number, type:String);

	static public function RecurseObject(name:String, root:Object, depth:Number, type:String);

	static public function TraceHitTest();

	static public function RecurseHitTest(name:String, root:Object);

}
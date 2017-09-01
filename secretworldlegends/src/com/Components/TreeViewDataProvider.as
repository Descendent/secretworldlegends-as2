import gfx.events.EventDispatcher;
import com.Components.TreeViewConstants;
intrinsic class com.Components.TreeViewDataProvider extends EventDispatcher
{
	public var length : Number;
	private var root : Object;

	public function TreeViewDataProvider(r:Object);

	public function initialize(list:Object) : Void;

	public function requestItemRange(startIndex:Number, endIndex:Number, scope:Object, callBack:String) : Array;

	public function invalidate(length:Number) : Void;

	public function validateLength() : Void;

	private function loadObjects(data:Array, currObj:Object, reqLen:Number);

	private function computeLength(obj:Object) : Number;

	private function findObjectByIndex(index:Number) : Object;

	private function preProcessRoot() : Void;

	private function preProcess(node:Object, parent:Object, depth:Number, depthIcons:Array) : Void;

	public function toString() : String;

}
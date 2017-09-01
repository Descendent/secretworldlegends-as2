import com.Utils.Signal;
intrinsic class com.GameInterface.Tooltip.TooltipInterface
{
	static public var e_OrientationHorizontal : Object;
	static public var e_OrientationVertical : Object;
	static public var e_OrientationGrid : Object;
	private var e_DirectionLeft : Object;
	private var e_DirectionRight : Object;
	private var e_DirectionUp : Object;
	private var e_DirectionDown : Object;
	private var e_DirectionNone : Object;
	public var SignalLayout : Signal;
	private var m_TooltipDataArray : Array;
	private var m_Orientation : Number;
	private var m_TargetPosition : flash.geom.Point;
	private var m_TargetSize : flash.geom.Point;
	private var m_PanelSpacing : Number;
	private var m_PreferredArrowEdgeSpacing : Number;
	private var m_ArrowOverlap : Number;
	private var m_IsFloating : Boolean;
	private var m_TooltipArray : Array;

	private function TooltipInterface(orientation:Number, tooltipDataArray:Array);

	public function Close();

	public function MakeFloating();

	public function IsDoneLoading() : Boolean;

	public function GetPanelCount() : Number;

	public function GetSize() : flash.geom.Point;

	public function GetArrowSize() : flash.geom.Point;

	public function GetPanelSize(index:Number) : flash.geom.Point;

	public function SetGlobalPosition(pos:flash.geom.Point) : Void;

	private function SetPanelPosition(index:Number, pos:flash.geom.Point) : Void;

	private function SetArrow(pos:flash.geom.Point, orientation:Number) : Void;

	public function IsFloating() : Boolean;

	public function SetPosition(targetPos:flash.geom.Point, targetSize:flash.geom.Point) : Void;

	private function SwapPoint(point:flash.geom.Point) : flash.geom.Point;

	private function UpdatePosition() : Void;

	public function Layout(arrowEdgeSpacing:Number, reverseOrder:Boolean, disableArrow:Boolean);

}
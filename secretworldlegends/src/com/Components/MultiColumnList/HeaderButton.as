import gfx.controls.Button;
intrinsic class com.Components.MultiColumnList.HeaderButton extends Button
{
	private var m_Id : Object;
	private var m_LabelText : String;
	private var m_CanSort : Boolean;
	private var m_SortArrow : MovieClip;
	private var m_SortDirection : Number;
	private var m_Type : Number;
	static public var HEADER_NORMAL : Object;
	static public var HEADER_FIRST : Object;
	static public var HEADER_LAST : Object;

	public function HeaderButton();

	public function SetId(id:Number);

	public function GetId();

	public function SetCanSort(canSort:Boolean);

	public function SetShowArrow(show:Boolean);

	public function SetLabel(label:String);

	public function SetWidth(newWidth:Number);

	public function SetType(type:Number);

	public function SetSortDirection(direction:Number) : Void;

	private function handleClick(controllerIdx:Number, button:Number) : Void;

}
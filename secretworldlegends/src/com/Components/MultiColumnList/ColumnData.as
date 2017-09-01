intrinsic class com.Components.MultiColumnList.ColumnData
{
	public var m_Id : Number;
	public var m_Flags : Number;
	public var m_Label : String;
	public var m_Width : Number;
	public var m_DefaultWidth : Number;
	public var m_MinWidth : Number;
	static public var COLUMN_DISABLED : Number;
	static public var COLUMN_NON_RESIZEABLE : Number;
	static public var COLUMN_HIDE_LABEL : Number;
	static public var COLUMN_NOT_SORTABLE : Number;

	public function ColumnData();

	public function IsDisabled();

	public function ShouldShowLabel();

	public function CanResize();

	public function CanSort();

}
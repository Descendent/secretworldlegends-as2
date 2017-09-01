intrinsic class GUI.Tooltip.TooltipEntry
{
	static public var TOOLTIPENTRY_TYPE_MOVIECLIP : Object;
	static public var TOOLTIPENTRY_TYPE_TEXTFIELD : Object;
	static public var TOOLTIPENTRY_TYPE_DIVIDER : Object;
	static public var TOOLTIPENTRY_TYPE_PADDING : Object;
	public var m_TypeLeft : Number;
	public var m_TypeRight : Number;
	public var m_ContentLeft : Object;
	public var m_ContentRight : Object;
	public var m_Padding : Number;

	public function TooltipEntry(type:Number, content:Object, padding:Number);

	public function SetRightContent(type:Number, content:Object);

}
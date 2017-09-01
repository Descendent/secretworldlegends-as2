intrinsic class com.Components.MultiColumnList.MCLBaseCellRenderer
{
	private var m_Parent : MovieClip;
	private var m_MovieClip : MovieClip;
	private var m_Id : Number;

	public function MCLBaseCellRenderer(parent:MovieClip, id:Number);

	public function GetId() : Number;

	public function SetPos(x:Number, y:Number);

	public function SetAlpha(alpha:Number);

	public function SetSize(width:Number, height:Number);

	public function GetDesiredWidth() : Number;

	public function Remove();

}
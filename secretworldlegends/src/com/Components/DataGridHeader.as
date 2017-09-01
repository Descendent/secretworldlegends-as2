import gfx.controls.Button;
intrinsic class com.Components.DataGridHeader extends Button
{
	private var _descending : Boolean;
	public var sortArrow : MovieClip;

	public function get descending() : Boolean;
	public function set descending(value:Boolean) : Void;

	public function get selected() : Boolean;
	public function set selected(value:Boolean) : Void;


	private function DataGridHeader();

	private function configUI() : Void;

	private function handleClick(mouseIndex:Number) : Void;

}
import gfx.controls.Slider;
import mx.utils.Delegate;
intrinsic class com.Components.FCSlider extends Slider
{
	private var m_SliderDividerArray : Array;

	public function get maximum() : Number;
	public function set maximum(value:Number) : Void;

	public function set snapping(value:Boolean) : Void;


	public function FCSlider();

	private function DrawDividers();

}
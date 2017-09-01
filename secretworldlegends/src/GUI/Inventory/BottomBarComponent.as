import com.GameInterface.DistributedValue;
import com.Utils.LDBFormat;
import gfx.controls.Button;
import gfx.core.UIComponent;
intrinsic class GUI.Inventory.BottomBarComponent extends UIComponent
{
	static private var PADDING : Number;
	private var m_Cash : MovieClip;
	private var m_TokenButton : Button;
	private var m_Background : MovieClip;
	private var m_WalletVisible : DistributedValue;

	public function BottomBarComponent();

	private function configUI() : Void;

	public function SetWidth(value:Number) : Void;

	public function SetHeight(value:Number) : Void;

	private function TokenButtonHandler(event:Object) : Void;

}
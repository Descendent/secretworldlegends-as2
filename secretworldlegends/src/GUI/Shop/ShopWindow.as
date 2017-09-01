import com.Components.WinComp;
import com.GameInterface.ShopInterface;
import com.Utils.LDBFormat;
import com.Utils.Signal;
intrinsic class GUI.Shop.ShopWindow extends WinComp
{
	static public var MIN_WIDTH : Number;
	static public var MIN_HEIGHT : Number;
	public var SignalCloseShop : Signal;

	public function ShopWindow();

	public function SetShopInterface(shopInterface:ShopInterface) : Void;

	public function SlotClose() : Void;

}
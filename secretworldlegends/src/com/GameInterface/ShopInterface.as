import com.Utils.ID32;
import com.Utils.Signal;
intrinsic class com.GameInterface.ShopInterface
{
	public var SignalCloseShop : Signal;
	public var SignalShopItemsUpdated : Signal;
	static public var SignalOpenShop : Signal;
	static public var SignalOpenInstantBuy : Signal;
	static public var SignalConfirmPurchase : Signal;
	static public var SignalMembershipPriceUpdated : Signal;
	static public var SignalSAFCollectorsPriceUpdated : Signal;
	public var m_Items : Array;

	public function ShopInterface(shopID:ID32);

	public function BuyItem(itemPos:Number);

	public function SellItem(inventoryID:ID32, itemPos:Number);

	public function RepairItem(inventoryID:ID32, itemPos:Number);

	public function RepairAllItems();

	public function PreviewItem(itemPos:Number);

	public function CanPreview(itemPos:Number) : Boolean;

	public function CloseShop();

	public function UndoSell();

	public function GetNumUndoItems() : Number;

	public function UpdateShopItems();

	public function IsVendorSellOnly() : Boolean;

	static public function BuyItemTemplate(templateID:Number, tokenType:Number, tokenAmount:Number) : Void;

	static public function GetTagPriceInfo(tagId:Number) : Object;

	static public function RequestAurumPurchase();

	static public function ConfirmRealMoneyPurchase();

	static public function CancelRealMoneyPurchase();

	static public function ChangePaymentInfo();

	static public function ShowLegalInfo();

	static public function RequestMembershipPrice();

	static public function PurchaseMembership();

	static public function RequestSAFCollectorsPrice();

	static public function PurchaseSAFCollectors();

	static public function GetPromoFromItemTemplate(templateID:Number) : Boolean;

}
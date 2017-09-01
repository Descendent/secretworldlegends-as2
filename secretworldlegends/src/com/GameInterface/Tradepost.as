import com.GameInterface.TradepostSearchData;
import com.GameInterface.ItemPrice;
import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.Tradepost
{
	static public var m_TradepostItemTypes : Object;
	static public var m_Mail : Object;
	static public var m_BankSlotsItemsToSend : Array;
	static public var m_SearchResults : Array;
	static public var m_SearchCriteria : TradepostSearchData;
	static public var SignalComposeMail : Signal;
	static public var SignalNewMailNotification : Signal;
	static public var SignalNewMail : Signal;
	static public var SignalMailUpdated : Signal;
	static public var SignalMailDeleted : Signal;
	static public var SignalAllMailRead : Signal;
	static public var SignalMailResult : Signal;
	static public var SignalSearchResult : Signal;
	static public var SignalMailItemAttached : Signal;
	static public var SignalMailItemDetached : Signal;
	static public var SignalGuildCashUpdated : Signal;
	static public var SignalExchangeUpdated : Signal;

	static public function UpdateMail() : Void;

	static public function SendMail(receiverName:String, messageBody:String, money:Number) : Boolean;

	static public function MarkAsRead(mailId:Number) : Void;

	static public function GetMailItems(mailId:Number) : Void;

	static public function GetMailItem(mailId:Number, itemId:Number) : Void;

	static public function GetMailIDByItem(bankItemSlot:Number) : Number;

	static public function GetSentToName(bankItemSlot:Number) : String;

	static public function DeleteMail(mailId:Number) : Void;

	static public function CancelMail(mailId:Number) : Void;

	static public function HasUnreadMail() : Boolean;

	static public function AttachItemToMail(inventoryID:ID32, itemSlot:Number, posInMailAttachments:Number) : Number;

	static public function DetachItemFromMail(itemSlot:Number, notifyGUI:Boolean) : Boolean;

	static public function CanAttachToMail(inventoryID:ID32, itemSlot:Number, showFeedback:Boolean) : Boolean;

	static public function OpenComposeMail() : Void;

	static public function CancelComposeMail() : Void;

	static public function SellItem(inventoryID:ID32, bankItemSlot:Number, price:ItemPrice) : Boolean;

	static public function ChangeItemPrice(bankItemSlot:Number, price:ItemPrice) : Boolean;

	static public function CancelSellItem(bankItemSlot:Number) : Boolean;

	static public function IsItemForSale(bankItemSlot:Number) : Boolean;

	static public function GetItemSalePrice(bankItemSlot:Number) : ItemPrice;

	static public function BuyItem(itemID:Number, searchID:Number);

	static public function IsItemAttachedToMail(bankItemSlot:Number) : Boolean;

	static public function IsItemInComposeMail(bankItemSlot:Number) : Boolean;

	static public function MakeSearch() : Void;

	static public function CanItemBeRemovedFromGuildBank(bankItemSlot:Number) : Boolean;

	static public function RequestOpenTradepost() : Void;

	static public function RequestOpenBank() : Void;

	static public function CanClaimTradepostPurchase() : Boolean;

	static public function HasBuyOrder() : Boolean;

	static public function GetBuyOrder() : ItemPrice;

	static public function HasSellOrder() : Boolean;

	static public function GetSellOrder() : ItemPrice;

	static public function GetTopBuyOffers() : Array;

	static public function GetTopSaleOffers() : Array;

	static public function PostBuyOrder(orderQuantity:Number, orderPrice:Number) : Void;

	static public function PostSellOrder(orderQuantity:Number, orderPrice:Number) : Void;

	static public function CancelBuyOrder() : Void;

	static public function CancelSellOrder() : Void;

	static public function GetExchangeBalance() : ItemPrice;

	static public function WithdrawExchangeBalance() : Void;

}
﻿import gfx.controls.ListItemRenderer;
import com.GameInterface.Game.Character;
import com.GameInterface.DressingRoom;
import com.GameInterface.DressingRoomNode;
import com.GameInterface.Inventory;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
import com.Utils.ID32;
intrinsic class GUI.DressingRoom.ItemListItemRenderer extends ListItemRenderer
{
	private var m_Text : TextField;
	private var m_LockIcon : MovieClip;
	private var m_Equipped : MovieClip;
	private var m_WardrobeInventory : Inventory;
	private var m_EquippedInventory : Inventory;
	private var data : DressingRoomNode;
	private var m_PromoIcon : MovieClip;

	public function ItemListItemRenderer();

	private function configUI();

	public function setData(data:DressingRoomNode) : Void;

	private function GetPromo() : Number;

	public function Update();

}
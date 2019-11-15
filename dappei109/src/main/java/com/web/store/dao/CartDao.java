package com.web.store.dao;

import java.util.List;

import com.web.store.model.CartItem;

public interface CartDao {
	public boolean addItemToCart(String userId,CartItem item);
	public boolean removeItemFromCart(String userId,String pid);
	public boolean updateItemBuyNum(String userId,String pid);
	
	public List<CartItem> getAllItemFromCart(String userId);
}

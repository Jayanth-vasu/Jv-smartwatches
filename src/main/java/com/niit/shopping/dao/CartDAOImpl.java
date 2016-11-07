package com.niit.shopping.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.model.Cart;

@Repository
@Transactional
public class CartDAOImpl implements CartDAO{
	
	@Autowired
	SessionFactory session;
	
	@Override
	@SuppressWarnings("unchecked")
	public boolean checkProduct(Cart cart) {
		boolean isvalid=false;
		
		Query q=session.openSession().createQuery("from Cart where product_id='"+cart.getProduct_id()+"' and mail_id='"+cart.getCheckUser()+"'");
		
		List<Cart> ul= q.list();
		int s=ul.size();
		if(s==1)
		{
			isvalid=true;
		}
		
		return isvalid;
	}

	@Override
	public void addCartProduct(Cart cart) {
		session.getCurrentSession().save(cart);
		

	}


	@SuppressWarnings("unchecked")
	@Override
	public int cartNumber(String username) {
		Query q=session.openSession().createQuery("from Cart where mail_id="+"'"+username+"'"+"and orderstatus=false");
		List<Cart> ul= q.list();
		int s=ul.size();
		return s;
	}

	

	@SuppressWarnings("unchecked")
	@Override
	public List<Cart> getCart(int product_id,String name) {
		String hql = "from Cart where product_id="+"'"+product_id+"'"+"and mail_id='"+name+"'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<Cart> getCartByUser = query.list();
		return getCartByUser;
	}

	

	@Override
	public Cart getCartByUsername(String mail_id) {
		
		Query q=session.openSession().createQuery("from Cart where mail_id="+"'"+mail_id+"'");
		
		return (Cart) q;
	}

	@Override
	public void removeCartProduct(int cart_id) {
	
		session.getCurrentSession().delete(getCartById(cart_id));
	}
	
	@Override
	public Cart getCartById(int cart_id) {

		return (Cart) session.getCurrentSession().get(Cart.class, cart_id);
	}

	@Override
	public void clearall(String username) {
		  session.getCurrentSession().createQuery("delete from Cart where mail_id="+"'"+username+"'").executeUpdate();
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Cart> getCartByUser(String username) {
		String hql = "from Cart where orderstatus='false' and mail_id=" + "'" + username + "'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<Cart> getCartByUser = (List<Cart>) query.list();
		return getCartByUser;
		
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Cart> getTotalPrice(String username) {
		String hql = "select sum(productPrice) from Cart where mail_id=" + "'" + username + "'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<Cart> getTotalPrice = (List<Cart>) query.list();
		return getTotalPrice;

		
	}
	@Override
	public void updateQuantity(int qty, int product_id,String name) {
		String hql = "update Cart set quantity ='"+qty+"'"+"where product_id="+"'"+product_id+"'"+"and mail_id='"+name+"'";
		session.getCurrentSession().createQuery(hql).executeUpdate();
		
		
		
	}

}

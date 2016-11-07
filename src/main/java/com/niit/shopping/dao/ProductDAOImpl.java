package com.niit.shopping.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.model.Cart;
import com.niit.shopping.model.OrderDetails;
import com.niit.shopping.model.ProductDetails;
import com.niit.shopping.model.ShippingAddress;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SessionFactory session;

	@Override
	public void addProduct(ProductDetails productDetails) {
		session.getCurrentSession().save(productDetails);

	}

	@Override
	public void updateProduct(ProductDetails productDetails) {
		session.getCurrentSession().update(productDetails);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> listProducts() {

		return (List<ProductDetails>) session.getCurrentSession().createQuery("from ProductDetails").list();

	}

	@Override
	public ProductDetails getProductById(int product_id) {

		return (ProductDetails) session.getCurrentSession().get(ProductDetails.class, product_id);
	}

	@Override
	public void removeProduct(int product_id) {
		session.getCurrentSession().delete(getProductById(product_id));

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> listBrands() {

		return (List<ProductDetails>) session.getCurrentSession()
				.createQuery("select distinct product_brand from ProductDetails").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> getProductByBrand(String product_brand) {
		String hql = "from ProductDetails where product_brand=" + "'" + product_brand + "'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<ProductDetails> getProductByBrand = (List<ProductDetails>) query.list();
		return getProductByBrand;

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> getViewProductById(int product_id) {
		String hql = "from ProductDetails where product_id=" + "'" + product_id + "'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<ProductDetails> getViewProductById = (List<ProductDetails>) query.list();
		return getViewProductById;

	}

	
	@Override
	@SuppressWarnings("unchecked")
	public Set<ProductDetails> getCartProductById(int product_id) {
		String hql = "from ProductDetails where product_id=" + "'" + product_id + "'";
		Query query = session.getCurrentSession().createQuery(hql);
		Set<ProductDetails> getCartProductById =  (Set<ProductDetails>) query.list();
		return getCartProductById;
	}

	

	/*@SuppressWarnings("unchecked")
	@Override
	public boolean checkProduct() {
boolean isvalid=false;
		
		Query q=session.openSession().createQuery("from Cart");
		
		List<Cart> ul= q.list();
		int s=ul.size();
		if(s==1)
		{
			isvalid=true;
		}
		
		return isvalid;
		
	}*/

	
	@Override
	public void saveAddress(ShippingAddress shippingaddress) {
		session.getCurrentSession().save(shippingaddress);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> listsmartnotifiers() {
		String hql = "from ProductDetails where product_category='Smart Notifiers'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<ProductDetails> getProductByBrand = (List<ProductDetails>) query.list();
		return getProductByBrand;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> listwatchphones() {
		
		String hql = "from ProductDetails where product_category='Watch Phones'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<ProductDetails> getProductByBrand = (List<ProductDetails>) query.list();
		return getProductByBrand;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> listhealth() {
		
		String hql = "from ProductDetails where product_category='Health & Medical'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<ProductDetails> getProductByBrand = (List<ProductDetails>) query.list();
		return getProductByBrand;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> listfitness() {
		
		String hql = "from ProductDetails where product_category='Fitness & Outdoor'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<ProductDetails> getProductByBrand = (List<ProductDetails>) query.list();
		return getProductByBrand;
	}

	
	@Override
	public void saveOrder(OrderDetails orderDetails) {
		session.getCurrentSession().save(orderDetails);
		
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public void updateProduct(int product_id,int qty) {
		String hql = "from cart where product_id="+"'"+product_id+"'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<Cart> cartlist =  query.list();
		
		session.getCurrentSession().saveOrUpdate(qty);
		
		
	}
	@Override
	public void updateQuantity(int quantity) {
		Cart cart =new Cart();
		cart.setQuantity(quantity);
		session.getCurrentSession().save(cart);
		
		
	}

	
	

	@Override
	public void updatecart(Cart cartqty) {
		session.getCurrentSession().update(cartqty);
		
	}

	

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderDetails> getOrderlist(String name) {
		String hql = "from OrderDetails where mail_id='"+name+"'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<OrderDetails> orderDetails = query.list();
		return orderDetails;
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductDetails> getStock(int product_id) {
		String hql = "from ProductDetails where product_id='"+product_id+"'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<ProductDetails> productDetails = query.list();
		return productDetails;
		
	}

	@Override
	public void updateStock(int product_id,int stock) {
		String hql ="update ProductDetails set stock="+"'"+stock+"'"+"where product_id='"+product_id+"'";
		session.getCurrentSession().createQuery(hql).executeUpdate();
		
		
	}

	@Override
	public void updatecartStock(int product_id, String username, int stock) {
		String hql = "update Cart set stock="+"'"+stock+"'"+"where product_id='"+product_id+"'"+"and mail_id='"+username+"'";
		session.getCurrentSession().createQuery(hql).executeUpdate();
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Cart> getCartlistByUser(String username) {
		String hql = "from Cart where mail_id=" + "'" + username + "'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<Cart> getCartByUser = (List<Cart>) query.list();
		return getCartByUser;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderDetails> getMyOrders(String username) {
		String hql = "from OrderDetails where mail_id='"+username+"'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<OrderDetails> orderDetails= query.list();
		return orderDetails;
	}

	@SuppressWarnings("unchecked")
	@Override
	public int getOrderNumber(String username) {
		String hql = "from OrderDetails where mail_id='"+username+"'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<OrderDetails> orderDetails= query.list();
		int size = orderDetails.size();
		return size;
	}

	@Override
	public void cancelorder(String name) {
		session.getCurrentSession().createQuery("delete from OrderDetails where mail_id='"+name+"'").executeUpdate();
		
	}

	@Override
	public void deleteCart(int cart_id,String username) {
		session.getCurrentSession().createQuery("delete from Cart where cart_id='"+cart_id+"' and mail_id='"+username+"'").executeUpdate();
		
	}

	@Override
	public void updateStockQuantity(int product_id, int quantity) {
		session.getCurrentSession().createQuery("update ProductDetails set stock='"+quantity+"' where product_id='"+product_id+"'").executeUpdate();
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Cart> getCartByCart_id(int cart_id, String name) {
		String hql = "from Cart where mail_id='"+name+"' and cart_id='"+cart_id+"'";
		Query query = session.getCurrentSession().createQuery(hql);
		List<Cart> cart= query.list();
		return cart;
	}

	

	
	}

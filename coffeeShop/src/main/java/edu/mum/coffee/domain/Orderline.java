package edu.mum.coffee.domain;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Orderline")
public class Orderline implements Serializable{

	@Id
	@GeneratedValue
	private int id;
	private int quantity;
	@OneToOne(cascade=CascadeType.ALL)
	private Product product;
	@ManyToOne(cascade=CascadeType.ALL)
	private Order order;

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public double getSubtotal() {
		return quantity * product.getPrice();
	}

	public double getPrice() {
		return product.getPrice();
	}

}

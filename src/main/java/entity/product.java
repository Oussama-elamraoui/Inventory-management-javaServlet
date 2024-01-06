package entity;

public class product {
	private String name ;
	private int price ;
	private int quantity ;
	public String getName() {
		return name;
	}
	@Override
	public String toString() {
		return "product [name=" + name + ", price=" + price + ", quantity=" + quantity + "]";
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public product(String name, int price, int quantity) {
		super();
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}

package by.tms.model;

public class Item {
	private int id;
	private String name;
	private String description;
	private double price;
	private String author;

	public Item() {
	}

	public Item(String name, String description, double price, String author) {
		this.name = name;
		this.description = description;
		this.price = price;
		this.author = author;
	}

	public Item(int id, String name, String description, double price, String author) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.author = author;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Item{" +
				"id=" + id +
				", name='" + name + '\'' +
				", description='" + description + '\'' +
				", price=" + price +
				'}';
	}
}

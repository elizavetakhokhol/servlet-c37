package by.tms.storage;

import by.tms.model.Item;

import java.util.ArrayList;
import java.util.List;

public class InMemoryItemStorage {
	private static List<Item> items = new ArrayList<>();

	private static InMemoryItemStorage inMemoryItemStorage;

	private InMemoryItemStorage(){

	}

	public static InMemoryItemStorage getInstance() {
		if (inMemoryItemStorage == null){
			inMemoryItemStorage = new InMemoryItemStorage();
			return inMemoryItemStorage;
		}
		return inMemoryItemStorage;
	}

	{
		items.add(new Item(1, "Atlant raspravil plechi", "In a peculiar way combining fantasy and realism, the author poses the eternal damned questions in a very new way and offers his own answers",
				22.90, "Ayn Rand"));
		items.add(new Item(2, "Zamok iz stekla", "These are the books that can teach people not to lose heart.",
				17.98,"Jannett Walls"));
		items.add(new Item(3, "451 degrees Fahrenheit", "It's interesting and suggestive of what I used to do without thinking.",
				11.38,"Ray Bradbury"));
		items.add(new Item(4, "Shantaram", "In the life of every person there is a moment when he needs to part with someone or something.",
				18.59,"Gregory David Roberts"));
		items.add(new Item(5, "Norwegian forest", "This is a high level for serious reading lovers.",
				11.42,"Haruki Murakami"));
	}

	public List<Item> getAll(){
		return new ArrayList<>(items);
	}

	public Item getById(int id){
		for (Item item : items) {
			if (item.getId() == id) return item;
		}
		return null;
	}

}

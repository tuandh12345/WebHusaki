package asm.osaki.model.admin;

import java.util.ArrayList;
import java.util.List;


import asm.osaki.entities.product.Product;
import lombok.Data;

@Data
public class InventoryTransactions {
	private String name;
	private double quantityInstock;
//	private double quantitySolds;
//	private double totalAmount;
	
	public static List<InventoryTransactions> convert(List<Object[]> list){
		List<InventoryTransactions> finalList = new ArrayList<InventoryTransactions>();
		for (Object[] o : list) {
			InventoryTransactions inventoryTransactions = new InventoryTransactions();
			Product product = (Product) o[0];			
			inventoryTransactions.setName(product.getName());
			inventoryTransactions.setQuantityInstock(product.getQuantityInStock());;
//			inventoryTransactions.setQuantitySolds((double) o[1]);;
//			inventoryTransactions.setTotalAmount((double) o[2]);
			finalList.add(inventoryTransactions);
		}
		return finalList;
	}
}

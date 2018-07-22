package designpattern.factorymethod.idcard;

import java.util.ArrayList;
import java.util.List;

import designpattern.factorymethod.framework.Factory;

public class IDCardFactory extends Factory<IDCard> {

    private List<String> owners = new ArrayList<>();

    @Override
    protected IDCard createProduct(String owner) {
	return new IDCard(owner);
    }

    @Override
    protected void registerProduct(IDCard product) {
	owners.add(product.getOwner());
    }

    public List<String> getOwners() {
	return owners;
    }
}

package designpattern.factorymethod;

import designpattern.factorymethod.framework.Factory;
import designpattern.factorymethod.framework.Product;
import designpattern.factorymethod.idcard.IDCard;
import designpattern.factorymethod.idcard.IDCardFactory;

public class Main {

    public static void main(String[] args) {
	Factory<IDCard> factory = new IDCardFactory();
	Product card1 = factory.create("AAA");
	Product card2 = factory.create("BBB");
	Product card3 = factory.create("CCC");
	card1.use();
	card2.use();
	card3.use();
    }

}

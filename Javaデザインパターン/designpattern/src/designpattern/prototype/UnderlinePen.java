package designpattern.prototype;

public class UnderlinePen implements Product {
    private char uichar;

    public UnderlinePen(char uichar) {
	this.uichar = uichar;
    }

    @Override
    public void use(String s) {
	int length = s.getBytes().length;
	System.out.println("\"" + s + "\"");
	System.out.print(" ");
	for (int i = 0; i < length; i++) {
	    System.out.print(uichar);
	}
	System.out.println("");
    }

    @Override
    public Product createClone() {
	Product p = null;
	try {
	    p = (Product) clone();
	} catch (CloneNotSupportedException e) {
	    e.printStackTrace();
	}
	return p;
    }

}

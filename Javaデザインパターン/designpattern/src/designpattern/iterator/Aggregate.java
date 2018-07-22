package designpattern.iterator;

public interface Aggregate<T> {
	public abstract Iterator<T> iterator();
}

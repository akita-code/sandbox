package designpattern.iterator;

public interface Iterator<T> {
	public abstract boolean hasNext();

	public abstract T next();
}

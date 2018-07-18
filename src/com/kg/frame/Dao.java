package com.kg.frame;

import java.util.ArrayList;

public interface Dao<T, V> { // ¾ê°¡ Dao ÀÓ!
	public void insert(T t) throws Exception;
	public void update(T t) throws Exception;
	public void delete(V v) throws Exception;
	public T select(V v) throws Exception;
	public ArrayList<T> select() throws Exception;
}

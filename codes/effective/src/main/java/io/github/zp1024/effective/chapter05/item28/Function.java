// Generic Function interface - Page 122
package io.github.zp1024.effective.chapter05.item28;

interface Function<T> {
	T apply(T arg1, T arg2);
}
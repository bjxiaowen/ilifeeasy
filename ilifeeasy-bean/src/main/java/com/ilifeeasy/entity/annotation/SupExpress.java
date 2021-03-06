package com.ilifeeasy.entity.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Express注解
 * 
 * @author Andy
 * @version 2016-03-16
 */
@Target({ ElementType.ANNOTATION_TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Inherited
public @interface SupExpress {

	/**
	 * 是否自动按列的引用关系优化计算顺序 默认值true
	 */
	String isOpt() default "";

	/**
	 * 文本
	 */
	String text() default "";

}

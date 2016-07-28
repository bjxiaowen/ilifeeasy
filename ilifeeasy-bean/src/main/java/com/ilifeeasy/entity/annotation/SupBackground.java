
package com.ilifeeasy.entity.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Background注解
 * 
 * @author Andy
 * @version 2016-03-16
 */
@Target({ ElementType.ANNOTATION_TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Inherited
public @interface SupBackground {

	/**
	 * 背景颜色
	 * 
	 * @return
	 */
	String bgColor() default "";

}

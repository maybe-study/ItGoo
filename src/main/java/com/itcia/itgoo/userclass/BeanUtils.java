package com.itcia.itgoo.userclass;

import org.springframework.context.ApplicationContext;

import com.itcia.itgoo.share.ApplicationContextProvider;

public class BeanUtils {
 
    public static Object getBean(String beanName) {
        ApplicationContext applicationContext = ApplicationContextProvider.getApplicationContext();
        return applicationContext.getBean(beanName);
    }
 
}

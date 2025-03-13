/**
  * @FileName : BoardServiceImpl.java
  * @Project : LottoGoodLuck
  * @Date : 2019. 11. 10. 
  * @작성자 : dragon 
  * @프로그램 설명 :
  *  -
  *=====================================================
  * @변경일자		수정자		변경내역
  *=====================================================
  */


package org.com.mvc.service;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.com.mvc.dao.BaseApiV1DAO;
import org.com.mvc.dto.ApiV1DTO;
import org.springframework.stereotype.Service;

@Service
public class BaseApiV1ServiceImpl<T> implements BaseApiV1Service<T>{

	@Inject
	private BaseApiV1DAO<T> dao;
	
	@Override
	public T find(ApiV1DTO apiV1DTO) throws Exception {
		
		return (T) dao.find(apiV1DTO);
	}

	@Override
	// 동적 타입 리턴 메서드
    public Object selectOne(ApiV1DTO apiV1DTO) throws Exception {
		// Dynamically load the class
        Class<?> clazz = Class.forName("org.com.mvc.dto.TA1001MDTO");
        

        // Get the constructor of the class (no-args constructor)
        Constructor<?> constructor = clazz.getDeclaredConstructor();

        // Create a new instance of the class
        Object instance = constructor.newInstance();

        // Get query results (Map) from DAO
        Map<String, Object> resultMap = dao.selectOne(apiV1DTO);

     

        // Loop through the resultMap and dynamically invoke the setters
        for (Map.Entry<String, Object> entry : resultMap.entrySet()) {
            String columnName = entry.getKey();
            Object value = entry.getValue();

            // Convert the column name (snake_case) to camelCase
            String fieldName = toCamelCase(columnName);

            // Construct the setter method name (e.g., setId(), setName())
            String setterMethodName = "set" + Character.toUpperCase(fieldName.charAt(0)) + fieldName.substring(1);
            
            Method setterMethod = findSetterMethod(clazz, setterMethodName, value);

            if (setterMethod != null) {
                setterMethod.invoke(instance, value);
            }
        }

        return instance;
    }
	
	private Method findSetterMethod(Class<?> clazz, String setterMethodName, Object value) {
        // Look for the setter method that matches the field name and type
        Method[] methods = clazz.getMethods();
        for (Method method : methods) {
            if (method.getName().equals(setterMethodName) &&
                method.getParameterTypes().length == 1 &&
                method.getParameterTypes()[0].isAssignableFrom(value.getClass())) {
                return method;
            }
        }
        return null;
    }

    // Utility method to convert snake_case to camelCase
    private String toCamelCase(String snakeCase) {
        StringBuilder result = new StringBuilder();
        boolean capitalizeNext = false;

        for (char c : snakeCase.toCharArray()) {
            if (c == '_') {
                capitalizeNext = true; // Set flag to capitalize next character
            } else {
                result.append(capitalizeNext ? Character.toUpperCase(c) : Character.toLowerCase(c));
                capitalizeNext = false; // Reset the flag
            }
        }
        return result.toString();
    }


	@Override
	public List<?> select(ApiV1DTO apiV1DTO) throws Exception {
		// Dynamically load the class
        Class<?> clazz = Class.forName("org.com.mvc.dto.TA1001MDTO");
        

        // Get the constructor of the class (no-args constructor)
        Constructor<?> constructor = clazz.getDeclaredConstructor();

        // Get query results (Map) from DAO
        List<Map<String, Object>> resultMapList = dao.select(apiV1DTO);
     
        List<Object> resultDtos = new ArrayList<>();
        
        for (Map<String, Object> resultMap : resultMapList) {
            Object instance = constructor.newInstance();

            // Loop through the result map and set the values in the DTO
            for (Map.Entry<String, Object> entry : resultMap.entrySet()) {
                String columnName = entry.getKey();
                Object value = entry.getValue();

                // Convert the column name (snake_case) to camelCase
                String fieldName = toCamelCase(columnName);

                // Construct the setter method name (e.g., setId(), setName())
                String setterMethodName = "set" + Character.toUpperCase(fieldName.charAt(0)) + fieldName.substring(1);

                // Find the setter method and invoke it
                Method setterMethod = findSetterMethod(clazz, setterMethodName, value);

                if (setterMethod != null) {
                    setterMethod.invoke(instance, value);
                }
            }

            resultDtos.add(instance);
        }

        return resultDtos;
	}



}

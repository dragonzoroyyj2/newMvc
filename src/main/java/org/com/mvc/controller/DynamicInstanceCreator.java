package org.com.mvc.controller;

import java.lang.reflect.*;
import java.util.*;

public class DynamicInstanceCreator {
    public static void main(String[] args) {
        try {
            // 클래스 이름을 동적으로 지정 (예: "com.example.MyDto")
            String className = "org.com.mvc.dto.TA1001MDTO";
            
            // 클래스 로드
            Class<?> clazz = Class.forName(className);
            
            System.out.println(clazz);
            
            // 해당 클래스를 동적으로 인스턴스화
            Object instanceDto = clazz.getDeclaredConstructor().newInstance();

            // List에 동적 인스턴스를 추가
            List<Object> dtoList = new ArrayList<>();
            dtoList.add(instanceDto);
            
            // 결과 확인
            System.out.println("List contents: " + instanceDto.getClass());

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

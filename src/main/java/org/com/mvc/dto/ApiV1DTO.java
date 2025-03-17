package org.com.mvc.dto;

public class ApiV1DTO<T> {
    private String packageName;
    private String className;
    private Integer code;
    private String msg;
    private T data;
    private String mapper;
    private String sql;

    // 기본 생성자
    public ApiV1DTO() {
        // 기본 생성자에서는 기본값으로 초기화합니다.
        this.packageName = "";
        this.className = "";
        this.code = 0;
        this.msg = "";
        this.data = null;
        this.mapper = "";
        this.sql = "";
    }

    // 전체 필드를 사용하는 생성자
    public ApiV1DTO(String packageName, String className, Integer code, String msg, T data, String mapper, String sql) {
        this.packageName = packageName;
        this.className = className;
        this.code = code;
        this.msg = msg;
        this.data = data;
        this.mapper = mapper;
        this.sql = sql;
    }

    // Getter and Setter
    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public String getMapper() {
        return mapper;
    }

    public void setMapper(String mapper) {
        this.mapper = mapper;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    @Override
    public String toString() {
        return "ApiV1DTO{" +
                "packageName='" + packageName + '\'' +
                ", className='" + className + '\'' +
                ", code=" + code +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                ", mapper='" + mapper + '\'' +
                ", sql='" + sql + '\'' +
                '}';
    }
}


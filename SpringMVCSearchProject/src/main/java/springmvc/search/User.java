package springmvc.search;

import java.util.Arrays;

public class User {
    private String userName;
    private Long userId;
    private String userDob;
    private String[] userCourse;
    private String userGender;
    private String userType;

    private Address address ;
    // Getters and Setters

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserDob() {
        return userDob;
    }

    public void setUserDob(String userDob) {
        this.userDob = userDob;
    }

    public String[] getUserCourse() {
        return userCourse;
    }

    public void setUserCourse(String[] userCourse) {
        this.userCourse = userCourse;
    }

    public String getUserGender() {
        return userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }
    

    @Override
    public String toString() {
        return "User{" +
                "userName='" + userName + '\'' +
                ", userId=" + userId +
                ", userDob='" + userDob + '\'' +
                ", userCourse=" + Arrays.toString(userCourse) +
                ", userGender='" + userGender + '\'' +
                ", userType='" + userType + '\'' +
                ", Address='" + address + '\'' +
                '}';
    }
    
    

}

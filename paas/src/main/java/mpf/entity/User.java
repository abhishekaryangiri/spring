package mpf.entity;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;

    @Column(name = "mobile_number", unique = true)
    private String mobileNumber;

    @Column(name = "favorite_teacher")
    private String favoriteTeacher;

    private String password;

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getFavoriteTeacher() {
        return favoriteTeacher;
    }

    public void setFavoriteTeacher(String favoriteTeacher) {
        this.favoriteTeacher = favoriteTeacher;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

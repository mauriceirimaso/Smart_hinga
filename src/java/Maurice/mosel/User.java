package Maurice.mosel;

/**
 *
 * @author maurice
 */
public class User {   
            private String fname;
            private String lname;
            private String email;
            private String dob;
            private String pwd;
            private String pwdd;

    public User(String fname, String lname, String email, String dob, String pwd, String pwdd) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.dob = dob;
        this.pwd = pwd;
        this.pwdd = pwdd;
    }

    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public String getEmail() {
        return email;
    }

    public String getDob() {
        return dob;
    }

    public String getPwd() {
        return pwd;
    }

    public String getPwdd() {
        return pwdd;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setPwdd(String pwdd) {
        this.pwdd = pwdd;
    }
            
    
}

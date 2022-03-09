package Users;

public class Address {
	String house_No;
    String street;
    String city;
    String state;
    int pincode;

    public Address(String house_No, String street, String city, String state, int pincode){
        this.house_No = house_No;
        this.street = street;
        this.city = city;
        this.state = state;
        this.pincode = pincode;
    } 

    String get_Address(){
        return (this.house_No + ", " + this.street + ", " + this.city + ", " + this.state + ", " + this.pincode);
    }

    String get_House_No(){
        return this.house_No;
    }

    String get_Street(){
        return this.street;
    }

    String get_City(){
        return this.city;
    }

    String get_State(){
        return this.state;
    }

    int get_Pincode(){
        return this.pincode;
    }

    void set_House_No(String house_No){
        this.house_No = house_No; 
    }

    void set_Street(String street){
        this.street = street;
    }

    void set_City(String city){
        this.city = city;
    }

    void set_State(String state){
        this.state = state;
    }

    void set_pincode(int pincode){
        this.pincode = pincode;
    }
}

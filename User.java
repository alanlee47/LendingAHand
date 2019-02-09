public Class User()
{
    String firstName;
    String lastName;
    double latitude;
    double longitute;
    int phoneNumber;
    
    public User(String firstName, String lastName, double latitude, double longitude, int phoneNumber)
    {
        this.firstName = firstName;
        this.lastName = lastName;
        this.latitude = latitude;
        this.longitude = longitude;
        this.phoneNumber = phoneNumber;
    }
}
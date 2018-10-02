public class RoomDataModel
{
    int rno, floor, totalBeds, vacantBeds;
    string type,gender;
    float rent, deposite;
    public RoomDataModel()
    {

    }
    public string getDispData()
    {
        return "Room No = " + rno + "  Floor = " + floor+"  Vacant Beds = "+vacantBeds+ " Rent = "+rent+ " Deposit = "+deposite;
    }
    public RoomDataModel(int rno,string type, string gender, int floor, int totalBeds, int vacantBeds,float rent, float deposite)
    {
        this.rno = rno;
        this.type = type;
        this.gender = gender;
        this.floor = floor;
        this.totalBeds = totalBeds;
        this.vacantBeds = vacantBeds;
        this.rent = rent;
        this.deposite = deposite;
    }
    /* 
    float rent, deposite;*/
    public int myrno
    {
        get { return rno; }
        set { rno = value; }
    }
    public int myfloor
    {
        get { return floor; }
        set { floor = value; }
    }
    public int mytotalBeds
    {
        get { return totalBeds; }
        set { totalBeds = value; }
    }
    public int myvacantBeds
    {
        get { return vacantBeds; }
        set { vacantBeds = value; }
    }
    public string mytype
    {
        get { return type; }
        set { type = value; }
    }
    public string mygender
    {
        get { return gender; }
        set { gender = value; }
    }

    // , ;
    public float myrent
    {
        get { return rent; }
        set { rent = value; }
    }
    public float mydeposite
    {
        get { return deposite; }
        set { deposite = value; }
    }
}
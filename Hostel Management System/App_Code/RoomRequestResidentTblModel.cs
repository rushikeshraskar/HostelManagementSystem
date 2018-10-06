public class RoomRequestResidentTblModel
{

    int RequestNumber, RoomNo, VacantBeds;
    float Rent, Deposit;
    string status,gender;

    public RoomRequestResidentTblModel()
    {

    }
    public RoomRequestResidentTblModel(int RequestNumber, int RoomNo, int VacantBeds,float Rent,float Deposit,string status,string gender)
    {
        this.RequestNumber= RequestNumber;
        this.RoomNo= RoomNo;
        this.VacantBeds= VacantBeds;
        this.Rent= Rent;
        this.Deposit = Deposit;
        this.status = status;
        this.gender = gender;
    }

    public int myRequestNumber
    {
        get { return RequestNumber; }
        set { RequestNumber = value; }
    }
    public int myRoomNo
    {
        get { return RoomNo; }
        set { RoomNo = value; }
    }
    public int myVacantBeds
    {
        get { return VacantBeds; }
        set { VacantBeds = value; }
    }
    public float myRent
    {
        get { return Rent; }
        set { Rent = value; }
    }
    public float myDeposit
    {
        get { return Deposit; }
        set { Deposit = value; }
    }
    public string myStatus
    {
        get { return status; }
        set { status = value; }
    }
    public string myGender
    {
        get { return gender; }
        set { gender = value; }
    }
}

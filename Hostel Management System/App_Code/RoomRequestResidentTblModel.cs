public class RoomRequestResidentTblModel
{

    int RequestNumber, RoomNo, VacantBeds;
    float Rent, Deposit;
    string status;

    public RoomRequestResidentTblModel()
    {

    }
    public RoomRequestResidentTblModel(int RequestNumber, int RoomNo, int VacantBeds,float Rent,float Deposit,string status)
    {
        this.RequestNumber= RequestNumber;
        this.RoomNo= RoomNo;
        this.VacantBeds= VacantBeds;
        this.Rent= Rent;
        this.Deposit = Deposit;
        this.status = status;
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
}

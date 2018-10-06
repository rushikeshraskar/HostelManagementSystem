public class RoomRequestOwnerTblModel:RoomRequestResidentTblModel
{

    string fname,lname,cno,mailid,occupation,jdate,rid;
    public RoomRequestOwnerTblModel():base()
    {
         
    }
    public RoomRequestOwnerTblModel(int RequestNumber, int RoomNo, int VacantBeds, float Rent, float Deposit, string status, string gender,string fname, string lname,string cno,string mailid,string occupation,string jdate,string rid) : base(RequestNumber, RoomNo, VacantBeds, Rent, Deposit, status,gender)
    {
        this.fname= fname;
        this.lname= lname;
        this.cno= cno;
        this.mailid= mailid;
        this.occupation= occupation;
        this.jdate= jdate;
        this.rid= rid;
    }
    public string myfname
    {
        get { return fname; }
        set { fname = value; }
    }
    public string mylname
    {
        get { return lname; }
        set { lname = value; }
    }
    public string mycno
    {
        get { return cno; }
        set { cno = value; }
    }
    public string mymailid
    {
        get { return mailid; }
        set { mailid = value; }
    }
      
        public string myoccupation
    {
        get { return occupation; }
        set { occupation = value; }
    }
    public string myjdate
    {
        get { return jdate; }
        set { jdate = value; }
    }
    public string myrid
    {
        get { return rid; }
        set { rid = value; }
    }
}


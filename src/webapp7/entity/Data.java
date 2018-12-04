package webapp7.entity;

public class Data{
    //variable for username
    private String user;

    //variable for date
    private String date;

    //variable for week
    private int week;

    //variable for weekly earning
    private int earning;

    //variable for money spent
    private int expenditure;

    public Data(){
    	
    }

    public String getUser(){
        return user;
    }

    public void setUser(String user){
        this.user = user;
    }

    public String getDate(){
        return date;
    }

    public void setDate(String date){
        this.date = date;
    }

    public int getWeek(){
        return week;
    }

    public void setWeek(int week){
        this.week = week;
    }

    public int getEarning(){
        return earning;
    }

    public void setEarning(int earning){
        this.earning = earning;
    }

    public int getExpenditure(){
        return expenditure;
    }

    public void setExpenditure(int expenditure){
        this.expenditure = expenditure;
    }


}

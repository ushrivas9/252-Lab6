package webapp7.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="data")
public class Data{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@ManyToOne(cascade= {CascadeType.ALL})
	@JoinColumn(name="usernamef")
	private Users users;


    //variable for date
	@Column(name="date")
    private String date;

    //variable for week
	@Column(name="week")
    private int week;

    //variable for weekly earning
	@Column(name="earnings")
    private int earning;

    //variable for money spent
	@Column(name="expenditure")
    private int expenditure;

    public Data(){
    	
    }

    public Users getUser(){
        return users;
    }

    public void setUser(Users users){
        this.users = users;
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
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


}

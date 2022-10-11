package dao;

// MOCAR_CARINFO 테이블 DTO
public class CarinfoDTO {
	private int carnum;
	private int cartype;
	private String carname;
	private String carname_sub;
	private String caryear;
	private String carprice;
	private String carphoto;
	public int getCarnum() {
		return carnum;
	}
	public void setCarnum(int carnum) {
		this.carnum = carnum;
	}
	public int getCartype() {
		return cartype;
	}
	public void setCartype(int cartype) {
		this.cartype = cartype;
	}
	public String getCarname() {
		return carname;
	}
	public void setCarname(String carname) {
		this.carname = carname;
	}
	public String getCarname_sub() {
		return carname_sub;
	}
	public void setCarname_sub(String carname_sub) {
		this.carname_sub = carname_sub;
	}
	public String getCaryear() {
		return caryear;
	}
	public void setCaryear(String caryear) {
		this.caryear = caryear;
	}
	public String getCarprice() {
		return carprice;
	}
	public void setCarprice(String carprice) {
		this.carprice = carprice;
	}
	public String getCarphoto() {
		return carphoto;
	}
	public void setCarphoto(String carphoto) {
		this.carphoto = carphoto;
	}
	
	
}

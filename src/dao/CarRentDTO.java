package dao;

import java.util.Date;

// MOCAR_CARRENT 테이블 DTO
public class CarRentDTO {
	// 필드명 -> rentUUID * UUID 강조되게
	private String rentUUID;
	private Date rentstartday;
	private Date rentendday;
	private int carnum;

	public String getRentUUID() {
		return rentUUID;
	}

	public void setRentUUID(String rentUUID) {
		this.rentUUID = rentUUID;
	}

	public int getCarnum() {
		return carnum;
	}

	public void setCarnum(int carnum) {
		this.carnum = carnum;
	}

	public Date getRentstartday() {
		return rentstartday;
	}

	public void setRentstartday(Date rentstartday) {
		this.rentstartday = rentstartday;
	}

	public Date getRentendday() {
		return rentendday;
	}

	public void setRentendday(Date rentendday) {
		this.rentendday = rentendday;
	}

}

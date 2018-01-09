package Hibernate.PO;

import java.io.Serializable;
import java.sql.Timestamp;

public class Usercollectnew implements Serializable, Comparable<Usercollectnew>{

	private static final long serialVersionUID = 1L;
	private int ucnId;
	private Timestamp collectionTime;
	private Newsinfo newsinfo;
	private Userinfo userinfo;

	@Override
	public int compareTo(Usercollectnew o) {
		if (getCollectionTime() == null || o.getCollectionTime() == null)
			return 0;
		return getCollectionTime().compareTo(o.getCollectionTime());
	}

	public int getUcnId() {
		return ucnId;
	}

	public void setUcnId(int ucnId) {
		this.ucnId = ucnId;
	}

	public Timestamp getCollectionTime() {
		return collectionTime;
	}

	public void setCollectionTime(Timestamp collectionTime) {
		this.collectionTime = collectionTime;
	}

	public Newsinfo getNewsinfo() {
		return newsinfo;
	}

	public void setNewsinfo(Newsinfo newsinfo) {
		this.newsinfo = newsinfo;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}

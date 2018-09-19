package pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class IssuedBooks {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int issue_id;
	private String bookCallNo;
	private String book_name;
	private int student_id;
	private Date issue_date;
	private String student_name;
	private String student_contact;
	
	
	public String getStudent_contact() {
		return student_contact;
	}
	public void setStudent_contact(String student_contact) {
		this.student_contact = student_contact;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	
	public String getBookCallNo() {
		return bookCallNo;
	}
	public void setBookCallNo(String bookCallNo) {
		this.bookCallNo = bookCallNo;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public Date getIssue_date() {
		return issue_date;
	}
	public void setIssue_date(Date issue_date) {
		this.issue_date = issue_date;
	}
	public int getIssue_id() {
		return issue_id;
	}
	public void setIssue_id(int issue_id) {
		this.issue_id = issue_id;
	}
	
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

}

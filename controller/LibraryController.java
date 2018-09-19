package controller;

import java.util.ArrayList;
import java.util.Date;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import helper.HibernateHelp;
import pojo.Book;
import pojo.IssuedBooks;
import pojo.Librarian;
import pojo.User;

@Controller
public class LibraryController {
	ArrayList<Book> bookList = null;
	ArrayList<IssuedBooks> issuedbooks = null;
	private String bookCallNo;
	private String book_name;

	@RequestMapping("addBook")
	public String addBook(Model mode, Book book) {
		mode.addAttribute("newBook", book);
		return "addBook";
	}

	@RequestMapping("saveBook")
	public String saveBook(@ModelAttribute("newBook") Book book) {
		Date date = new Date();
		java.sql.Date addDate = new java.sql.Date(date.getTime());
		book.setAdded(addDate);

		Session sess = HibernateHelp.bookSession();
		sess.beginTransaction();
		sess.save(book);
		sess.getTransaction().commit();
		return "redirect:viewBooks";
	}

	@RequestMapping("viewBooks")
	public String viewAllBook(Model m) {
		m.addAttribute("Book", new Book());
		Session session = HibernateHelp.bookSession();
		session.beginTransaction();
		Query query = session.createQuery("from Book");
		bookList = (ArrayList<Book>) query.list();
		session.getTransaction().commit();
		m.addAttribute("books", bookList);
		return "HomeBook";
	}
	
	@RequestMapping("allIssuedBooks")
	public String showAllIssuedBooks(Model m, IssuedBooks issuebook) {
		m.addAttribute("IssuedBooks", issuebook);
		Session session = HibernateHelp.createsession();
		session.beginTransaction();
		Query query = session.createQuery("from IssuedBooks");
		issuedbooks = (ArrayList<IssuedBooks>) query.list();
		session.getTransaction().commit();
		m.addAttribute("issued", issuedbooks);
		return "allissuedbooks";
	}

	@RequestMapping("issue")
	public String issueBook(@RequestParam("bookCall") String bookCNo, @RequestParam("name") String name, Model model) {
		bookCallNo = bookCNo;
		book_name = name;
		model.addAttribute("issuebook", new IssuedBooks());
		model.addAttribute("bookCallNo", bookCNo);
		model.addAttribute("bookName", name);
		return "issuebook";
	}

	@RequestMapping("confrm")
	public String confirmIssue(@ModelAttribute("issuebook") IssuedBooks isubook) {
		String Action = "Issue";
		Date date = new Date();
		java.sql.Date isuDate = new java.sql.Date(date.getTime());
		boolean updationStatus = updateBook(bookCallNo, Action);

		if (updationStatus) {
			isubook.setIssue_date(isuDate);
			isubook.setBookCallNo(bookCallNo);
			isubook.setBook_name(book_name);
			Session session = HibernateHelp.createsession();
			session.beginTransaction();
			session.save(isubook);
			session.getTransaction().commit();
		}
		return "redirect:allIssuedBooks";
	}
	
	@RequestMapping("return")
	public String returnBook(Model model,@RequestParam("issueId") int issueid
							,@RequestParam("studentId") int studentId
							,@RequestParam("bookcall") String bookcall
							,@RequestParam("studentname") String studentName) {
		model.addAttribute("issueId", issueid);
		model.addAttribute("bookCall", bookcall);
		model.addAttribute("studentname", studentName);
		model.addAttribute("studentId", studentId);
		return "returnBook";
	}
	
	@RequestMapping("returnConfirm")
	public String returnConfirm(@RequestParam("issueId") int id,@RequestParam("bookcall") String bookcall) {
		String action = "Return";
		boolean returnStatus = updateBook(bookcall, action);
		if(returnStatus) {
			Session session= HibernateHelp.bookSession();
			session.beginTransaction();
			IssuedBooks book = session.get(IssuedBooks.class, id);
			session.delete(book);
			session.getTransaction().commit();
		}
		
		return "allissuedbooks";
	}

	protected boolean updateBook(String bookcallno, String action) {
		boolean status = false;
		if (bookcallno != "") {
			String hql = "from Book book where book.call_no= :bookcallno";
			Session sess = HibernateHelp.bookSession();
			sess.beginTransaction();
			Query query = sess.createQuery(hql);
			query.setParameter("bookcallno", bookcallno);
			Book updateBook = (Book) query.uniqueResult();
			int quantity = updateBook.getQuantity();
			int issued = updateBook.getIssued();

			if (action.equals("Issue")) {
				if ((quantity > 0) && (quantity > issued)) {

					quantity--;
					issued++;
					updateBook.setQuantity(quantity);
					updateBook.setIssued(issued);
					sess.update(updateBook);
					status = true;
					sess.getTransaction().commit();
				}
			}

			if (action.equals("Return")) {
				
				if(issued > 0) {
				quantity++;
				issued--;
				updateBook.setQuantity(quantity);
				updateBook.setIssued(issued);
				sess.update(updateBook);
				status = true;
				sess.getTransaction().commit();
				}
			}

		}

		return status;
	}

	
}

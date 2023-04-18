package com.codingdojo.jpa.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.codingdojo.jpa.models.Book;
import com.codingdojo.jpa.services.BookService;

// won't need an API controller from now on
// only need one controller for now
@Controller
public class BookController {
	@Autowired
	BookService bookService;
	// dependency injection for you
	// saves you a few lines of code
	
	@GetMapping("/books/{bookId}")
	public String index(Model model, @PathVariable("bookId") Long bookId) {
		System.out.println(bookId);
		Book book = bookService.findBook(bookId);
		System.out.println(book);
		
		//ArrayList<Book> books = bookService.getAllBooks();
		
		model.addAttribute("book", book); //has to match .jsp name
		// model.addAttribute("books", books);
		
		return "index.jsp";
	}
}

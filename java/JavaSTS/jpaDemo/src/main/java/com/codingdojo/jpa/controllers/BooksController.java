package com.codingdojo.jpa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.jpa.models.Book;
import com.codingdojo.jpa.services.BookService;

import jakarta.validation.Valid;

//... imports removed for brevity


@Controller
public class BooksController {
	@Autowired
	BookService bookService;
	
 // other methods removed for brevity
 @RequestMapping("/books/{id}/edit")
 public String edit(@PathVariable("id") Long id, Model model) {
     Book book = bookService.findBook(id);
     model.addAttribute("book", book);
     return "/books/edit.jsp";
 }
 
 // BE SURE TO USE ID IN ROUTE, using diff path variable name will createa a new instance
 
 @RequestMapping(value="/books/{id}", method=RequestMethod.PUT)
 public String update(@Valid @ModelAttribute("book") Book book, BindingResult result, Model model) {
     if (result.hasErrors()) {
         Book book = bookService.findBook(id);
         model.addAttribute("book", book);
         return "/books/edit.jsp";
     } else {
         bookService.updateBook(book);
         return "redirect:/books";
     }
 }
 
//other methods removed for brevity
 @RequestMapping(value="/books/{id}", method=RequestMethod.DELETE)
 public String destroy(@PathVariable("id") Long id) {
     bookService.deleteBook(id);
     return "redirect:/books";
 }
 // alternatively has @DeleteMapping just directly
}

package com.techouts.bookStore.Model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Id;

public class BookStoreCart 
{
	@Id
	private String bookId;
	private String bookName;
	private String bookAuthor;
	private double bookPrice;
	 private byte[] image;  
	 
	    @Column(name = "image")
	    public byte[] getImage() {
	        return this.image;
	    }
	 
	    private String base64Image;
	     
	    public String getBase64Image() {
	        return base64Image;
	    }
	 
	    public void setBase64Image(String base64Image) {
	        this.base64Image = base64Image;
	    }
	public BookStoreCart(){}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public double getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(double bookPrice) {
		this.bookPrice = bookPrice;
	}
	@Override
	public String toString() {
		return "ActionAndAdventure [bookId=" + bookId + ", bookName=" + bookName + ", bookAuthor=" + bookAuthor
				+ ", bookPrice=" + bookPrice + ", image=" + Arrays.toString(image) + ", base64Image=" + base64Image
				+ "]";
	}


}
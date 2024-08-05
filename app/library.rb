# frozen_string_literal: true

require_relative 'book'

class Library
  def initialize(books = [])
    @books = books
  end

  def add(title, author)
    if title || author
      @books << Book.new(title, author)
      puts "\nКнига #{title} от автора #{author} успешно добавлена."
    else
      puts "\nКнига не добавленна. Проверьте корректность введенного название книги или её автора."
    end
  end

  def books
    if @books.count > 0
      @books.each_with_index do |book, id|
        p book
        puts "\nСписок книг:"
        puts "#{id + 1}. #{book.title} - #{book.author}"
      end
    else
      puts "\nКнижная полка пуста. Попробуй добавить новые книги."
    end
  end

  def book(title)
    book = @books.find { |book| book.title == title }
    if book
      puts "\nКнига: #{book.title} | Автор: #{book.author}"
    else
      puts "\nКнига #{title} не найдена."
    end
  end

  def remove(title)
    book = @books.find { |book| book.title == title }
    if book
      @books.delete(book)
      puts "\nКнига #{title} удалена."
    else
      puts "\nКнига #{title} не найдена."
    end
  end
end

# frozen_string_literal: true

require_relative 'library'

class Application
  def start
    library = Library.new
    loop do
      puts "\nМеню:"
      puts '1. Добавить книгу'
      puts '2. Просмотреть список книг'
      puts '3. Удалить книгу'
      puts '4. Выйти'
      print "\nВыберите опцию: "
      answer = gets.strip.to_i

      case answer
      when 1
        print "\nВведите название книги: "
        title = gets.strip
        print "\nВведите автора книги: "
        author = gets.strip
        library.add(title, author)
      when 2
        library.books
      when 3
        print "\nВведите название книги для удаления: "
        title = gets.chomp
        library.remove(title)
      when 4
        puts "\nДо скорой встречи."
        break
      else
        puts "\nУказаного действия не существует. Пожалуйста, попробуйте снова."
      end
    end
  end
end

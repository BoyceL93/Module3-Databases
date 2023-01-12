require 'book'

class BookRepository

    def all
        sql = 'SELECT id, title, author_name FROM books;'
        result = DatabaseConnection.exec_params(sql, [])

        books = []

        result.each do |record|
            book = Book.new
            book.id = record['id']
            book.title = record['title']
            book.author_name = record['author_name']

            books << book
        end
        return books
    end

    def find(id)
        sql = "SELECT id, title, author_name FROM books WHERE id = #{id};"
        result = DatabaseConnection.exec_params(sql, [])

        selection = []

        result.each do |record|
            selection << record['id']
            selection << record['title']
            selection << record['author_name']
        end
        return selection
    end

    def create(id, title, author_name)
        sql = "INSERT INTO books (id, title, author_name) VALUES ('#{id}', '#{title}', '#{author_name}');"
        result = DatabaseConnection.exec_params(sql, [])
    end

    def delete(book)
    end
end

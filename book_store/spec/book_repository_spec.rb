require 'book_repository'

RSpec.describe BookRepository do
    def reset_books_table
        seed_sql = File.read('spec/seeds_book_store.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store' })
        connection.exec(seed_sql)
    end

        before(:each) do 
          reset_books_table
        end

    it 'returns all books' do
        repo = BookRepository.new
        books = repo.all
        expect(books.length).to eq(5)
        expect(books.first.title).to eq('Nineteen Eighty-Four')
        expect(books.first.author_name).to eq('George Orwell')
        expect(books[2].title).to eq('Emma')
    end

    it 'returns an individual record' do
        repo = BookRepository.new
        books = repo.find(4)
        expect(books).to eq(['4', 'Dracula', 'Bram Stoker'])
    end

    it 'creates a new book entry' do
        repo = BookRepository.new
        repo.create('6', 'Nightmares and dreamscapes', 'Stephen King')
        expect(repo.find(6)).to eq(['6', 'Nightmares and dreamscapes', 'Stephen King'])
    end
end
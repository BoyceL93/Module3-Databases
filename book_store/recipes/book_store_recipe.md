        repo = BookRepository.new
        books = repo.all
        expect(books.length).to eq(5)
        expect(books.first.title).to eq('Nineteen Eighty_Four')
        expect(books.first.author_name).to eq('George Orwell')
    end
end


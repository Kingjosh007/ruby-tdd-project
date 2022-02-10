
describe Solver do
  context 'When testing the Book class' do
    it 'A newly created book has a title of type String' do
      bk = Book.new('The Hobbit', 'J.R.R. Tolkien', [])
      expect(bk.title).not_to be_nil
      expect(bk.title).to be_a(String)
    end
  end
end

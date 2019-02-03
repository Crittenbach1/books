module FormHelper
  def setup_book(book)
    book.image ||= Image.new
    book
  end
end

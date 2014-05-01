require 'set'
require 'find'
# require 'pry-debugger'
require_relative 'lib/reader.rb'

class SearchEngine
  include Reader
  attr_accessor :folder, :books
  # call read_books and set up your data structures to make it easier when you call search
  def initialize (folder)
    @folder = folder
    @books = read_books(@folder)


  end

  def read_books(folder)
      # read the module to see how to read all books. The folder is called "search"
    read_all_books(folder)
  end

  def search(query) # Implement this search, return an array of book names in order of relatedness
    # automatically returns an array #keys
    book_info = {}
    books_names = book_info.keys
    binding.pry
    @books.each do |key,value|
      value = book_info[key]
      if value.include?(query)
        book_info[:key] += 1
      end

    end
  end
end

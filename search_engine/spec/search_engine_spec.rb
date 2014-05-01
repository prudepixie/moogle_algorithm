require 'rspec'
require 'pry-debugger'
require_relative '../search_engine.rb'

describe 'SearchEngine' do

  let(:library){SearchEngine.new("test")}
  it "initializes with a folder and stores it into a hash" do
    expect(library.books.count).to eq(3)
  end

  it "searchs " do
    expect(library.search('boy')).to eq([])
  end
end

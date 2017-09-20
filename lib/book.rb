class Book
  attr_accessor :title, :author, :date
  def initialize(attributes)
    @title = attributes.fetch(:title)
    @author = attributes.fetch(:author)
    @date = attributes.fetch(:date)
  end
end

class Book
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :owned, type: Mongoid::Boolean
end

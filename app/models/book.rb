class Book
  include Mongoid::Document
  include Mongoid::Paperclip

  field :title, type: String
  field :author, type: String
  field :owned, type: Mongoid::Boolean



  has_mongoid_attached_file :image,
                                  :styles => {
                                              :original  => "434x271>"
                                             }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

class Article < ApplicationRecord
  # Automatically save comments in @article.comments array    
  has_many :comments    
  # Make sure there is a title and it is at least 5 characters long before saving it
  validates :title, presence: true,
                    length: { minimum: 5 }
end

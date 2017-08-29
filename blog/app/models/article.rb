class Article < ApplicationRecord
  # Automatically save comments in @article.comments array 
  # Dependent deletes the nested resource comments when an article is deleted
  has_many :comments, dependent: :destroy
  # Make sure there is a title and it is at least 5 characters long before saving it
  validates :title, presence: true, length: { minimum: 5 }
    
end

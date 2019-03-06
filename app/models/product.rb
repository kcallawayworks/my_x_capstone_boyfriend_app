class Product < ApplicationRecord

belongs_to :user
belongs_to :category

has_many :images
has_many :conversations

end

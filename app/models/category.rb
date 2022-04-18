class Category < ApplicationRecord
    has_many :books
    validates :name, presence: true
    has_ancestry 
end

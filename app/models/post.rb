class Post < ApplicationRecord
    attr_accessor :category_id, :author_id
    belongs_to :category
end

class Post < ApplicationRecord
    # attr_accessor :category_id, :author_id
    # , :title, :body
    belongs_to :category
end

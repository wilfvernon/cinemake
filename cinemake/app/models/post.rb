class Post < ApplicationRecord
    belongs_to :director
    belongs_to :movie, optional: true
end

class Movie < ApplicationRecord
    belongs_to :language
    has_many :roles
    has_many :crew_members, through: :roles
    has_many :projects
    has_many :director_movies
    has_many :directors, through: :director_movies

    validates :name, presence: true
    validates :synopsis, presence: true

    def short_synopsis
        self.synopsis[0..100] + "..."
    end
end

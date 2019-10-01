class Movie < ApplicationRecord
    has_many :roles
    has_many :crew_members, through: :roles
    has_many :projects
    has_many :director_movies
    has_many :director_movies, through: :projects
end

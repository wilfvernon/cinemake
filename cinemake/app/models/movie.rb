class Movie < ApplicationRecord
    has_many :roles
    has_many :crew_members, through: :roles
    has_many :projects
    has_many :directors, through: :projects
end

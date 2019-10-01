class Director < ApplicationRecord
has_secure_password

has_many :director_movies
has_many :movies, through: :director_movies
has_many :posts
has_many :projects, through: :posts

validates :name, presence: true
validates :age, presence: true
validate :age_is_over_13
validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
validates :username, presence: true, uniqueness: true
# confirmation: true

def age_is_over_13
    if age.present? && age < 13
        errors.add(:age, "cannot be less than 13")
    end
end



end

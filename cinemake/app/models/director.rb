class Director < ApplicationRecord
has_many :projects
validates :name, presence: true
validates :age, presence: true
validate :age_is_over_13
validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
validate :username, presence: true, uniqueness: true
validates :password_digest, presence: true, confirmation: true

def age_is_over_13
    if age < 13
        errors.add(:age, "cannot be less than 13")
    end
end


end

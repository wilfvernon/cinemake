class CrewMember < ApplicationRecord
    has_many :roles
    has_many :movies, through: :roles

    def self.ids
        CrewMember.all.select{|crew| crew.id}
    end
end

class Movie < ApplicationRecord
    belongs_to :language
    has_many :roles
    has_many :crew_members, through: :roles
    has_many :projects
    has_many :director_movies
    has_many :directors, through: :director_movies

    validates :name, presence: true
    validates :synopsis, presence: true

    def most_recent_three_projects
        self.projects.sort_by{|project| project.created_at}.last(3).reverse
    end

    def short_synopsis
        self.synopsis[0..100] + "..."
    end

    def director_names
        self.directors.map{|director| director.name}
    end

    def director_ids
        self.directors.map{|director| director.id}
    end
    
    def actors
        self.crew_members.select{|crew_member| crew_member.crew_member_type == "Acting"}
    end
    
    def actor_names
        self.actors.map{|actor| actor.name}
    end
    
    def actor_ids
        self.actors.map{|actor| actor.id}
    end

    def stars
        self.actors.select{|actor| actor.movie_role(self).featured? == true}
    end

    def writers
        self.crew_members.select{|crew_member| crew_member.crew_member_type == "Writing"}
    end
    
    def writer_names
        self.writers.map{|writer| writer.name}
    end

    def writer_ids
        self.writers.map{|writer| writer.id}
    end

end

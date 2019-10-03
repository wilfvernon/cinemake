# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Language.create!(name: "English", abbreviation: "EN")
# Language.create!(name: "Spanish", abbreviation: "ES")
# Language.create!(name: "French", abbreviation: "FR")
# Language.create!(name: "German", abbreviation: "DE")
# Language.create!(name: "Italian", abbreviation: "IT")
# Language.create!(name: "Chinese", abbreviation: "ZH")
# Language.create!(name: "Japanese", abbreviation: "JA")
# Language.create!(name: "Korean", abbreviation: "KO")
# Language.create!(name: "Russian", abbreviation: "RU")
# Language.create!(name: "Portuguese", abbreviation: "PT")
# Language.create!(name: "Hindi", abbreviation: "HI")
# Language.create!(name: "Urdu", abbreviation: "UR")
# Language.create!(name: "Dutch", abbreviation: "NL")
# Language.create!(name: "Norwegian", abbreviation: "NN")
# Language.create!(name: "Swedish", abbreviation: "SV")
# Language.create!(name: "Danish", abbreviation: "DA")
# Language.create!(name: "Swahili", abbreviation: "SW")
# Language.create!(name: "Finnish", abbreviation: "FI")
# Language.create!(name: "Polish", abbreviation: "PL")
# Language.create!(name: "Hebrew", abbreviation: "HE")
# Language.create!(name: "Greek", abbreviation: "EL")
# Language.create!(name: "Amharic", abbreviation: "AM")
# Language.create!(name: "Yoruba", abbreviation: "YO")
# Language.create!(name: "Yiddish", abbreviation: "YI")
# Language.create!(name: "Welsh", abbreviation: "CY")
# Language.create!(name: "Turkish", abbreviation: "TR")
# Language.create!(name: "Vietnamese", abbreviation: "VI")
# Language.create!(name: "Thai", abbreviation: "TH")
# Language.create!(name: "Hausa", abbreviation: "HA")
# Language.create!(name: "Esperanto", abbreviation: "EO")
# Language.create!(name: "JavaScript", abbreviation: "JV")
# Language.create!(name: "Ruby", abbreviation: "RB")
# Language.create!(name: "Java2K", abbreviation: "GG")
Friend.destroy_all
Friend.new(:friender_id => 1, :friendee_id => 3, :status => "pending").save

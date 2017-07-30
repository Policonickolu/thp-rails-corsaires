class Corsair < ApplicationRecord
    validates :first_name, presence: {message: "Le prénom est requis"}, length:{maximum: 20, message: "Le prénom est trop long"} 
    validates :age, presence: {message: "L'age est requis"}, inclusion:{in: 15..120, message: "L'age n'est pas correct"} 
    validates :slack_handle, format: {without: / /, message: "Le pseudo slack ne doit pas contenir d'espace"}
    validates :github_handle, format: {without: / /, message: "Le compte github ne doit pas contenir d'espace"}
end

# écran de sécurité qui demande à l'utilisateur de définir un mot de passe, et un autre qui lui demande de le saisir. 

#Demande à l'utilisateur de définir un mot de passe

def signup()
    puts "Choisisez un mot de passe:"
    password = gets.chomp
    return password
end

#Demande à l'utilisateur de rentrer son mot de passe jusqu'à ce qu'il corresponde à celui défini précédemment
def login(password)
    puts "Composez votre mot de passe"
    input = gets.chomp
    while input != password
        puts "Le mot de passe est incorrect !"
        input = gets.chomp
    end
    puts "Autentification réussi!"
    return true
end

#Affiche un écran de bienvenue avec des informations top secrètes de la NSA
def welcome_screen
    puts "T'as réussi, bienvenu au top secret"
end


# Englobe l'exécution de chaque méthode 
def perform
    password = signup
    login(password)
end

perform()





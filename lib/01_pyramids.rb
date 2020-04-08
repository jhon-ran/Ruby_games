#programme demande à l'utilisateur un nombre entre 1 et 25 et qui sort une pyramide à descendre d' autant d'étages que ce nombre 


# Démi-pyramide

def half_pyramid()
    count = 0
    i = "#"
    pyramide = ["#"]

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    etage = gets.to_i

    puts "Voici la pyramide"

    puts pyramide 

    loop do 
        pyramide << pyramide[count] + "#{i}" 
        puts pyramide[-1]
        count += 1
        if count == etage - 1
            break
        end
    end

end

#Pyramide complète

def full_pyramid()

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    n = gets.chomp.to_i
    br = "\n" * 2
    i = 1

    puts "Voici la pyramide"
    
    1.upto(n) do
      print ' ' * n
      print '#' * (2 * i -1)
      print "\n"
      n -= 1
      i += 1
    end
    print br

end

#Pas vraiement une pyramide, plutôt un diamand

def wtf_pyramid()
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (choisis un nombre impair)?"
    print ">"
    n = gets.chomp.to_i
	middle = (n/2) +1

	for floor in 1..(middle)
		blank = " " * (middle - floor)
		diese = "#" * (floor+floor-1)
		puts blank + diese
	 end

	for floor in 1..(middle-1)
	 	blank = " " * (floor)
	 	diese = "#" * (n-floor-floor)
	 	puts blank + diese
	 end


end 


#Calls chaque pyramide
def perform
    half_pyramid()
    full_pyramid()
    wtf_pyramid()

end

perform()
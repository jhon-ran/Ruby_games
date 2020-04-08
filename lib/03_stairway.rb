#Jeu vidéo dans lequel un joueur doit monter 10 marches en fonction d'un jet de dé:
#S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
#S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
#S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)
#Quand le joueur atteint la 10ème marche, le programme l'en informe avec un message super enthousiaste, et le jeu se termine.


puts "Bienvenu à l'ascenseur"
puts "Jettez le dé !"

#Jet le dé randomly
def dice_random()
    dice = rand(0..6)
    return dice
end


def play
    move = 0
    i = 1
    while move < 10
		dice = dice_random()

	    if dice == 1
            print "Tour #{i}. Tu as #{dice}, tu descends 1 marche!"
            move -= 1
            i += 1
            puts " Tu es sur la marche #{move}"
        elsif dice == 5 || dice == 6
            print "Tour #{i}. Tu as un #{dice}, tu montes 1 marche!"
            dice += 1
            i += 1
            puts " Tu es sur la marche #{move}"
        else
            print "Tour #{i}. Tu as un #{dice}, tu ne bouges pas!"
            move = move
            i += 1
            puts " Tu es sur la marche #{move}"
        end
    end
        puts "Félicitations champion du monde !"
end

def perform ()
    dice = dice_random
    play
end 

perform()
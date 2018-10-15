class Player
  attr_accessor :firstname

  def initialize(firstname)
    @firstname = firstname
  end

  def name
    return "#{@firstname.capitalize}"
  end
end


class Board

	def base_board
		tab1 = [" ", " ", " "]
		tab2 = [" ", " ", " "]
		tab3 = [" ", " ", " "]
	end
end

class Board_case

	def update_board
		pos_x = 0
		pos_y = 0
		compteur = 0
		while compteur != 10
			caracter = "x"
			puts "tour du compeur #{compteur}"
			if compteur == 1
				caracter = "x"
			elsif compteur >= 2 && compteur % 2 == 0
				caracter = "o"
			end
			if (pos_x <= 3 && pos_x >= 1) && (pos_y <= 3 && pos_y >= 1)
				pos_y -= 1
				if pos_x == 1 && tab1[pos_y] == " "
					tab1[pos_y] = caracter
				elsif pos_x == 2 && tab2[pos_y] == " "
					tab2[pos_y] = caracter
				elsif pos_x == 3 && tab3[pos_y] ==  " "
					tab3[pos_y] = caracter
				else
					puts "Erreur ! La case est déja occupée ou mal renseignée !"
					compteur -= 1
					sleep(2)
				end
			end
			x = 0
			y = 0
			while tab1[x]
				if y == 1 || y == 3
					print "|"
				else
					print tab1[x]
					x += 1
				end
				y += 1
			end
			print "\n"
			print "—————\n"
			x = 0
			y = 0
			while tab2[x]
				if y == 1 || y == 3
					print "|"
				else
					print tab2[x]
					x += 1
				end
				y += 1
			end
			print "\n"
			print "—————\n"
			x = 0
			y = 0
			while tab3[x]
				if y == 1 || y == 3
					print "|"
				else
					print tab3[x]
					x += 1
				end
				y += 1
			end
			if tab1 == ["x", "x", "x"] || tab2 == ["x", "x", "x"] || tab3 == ["x", "x", "x"] || tab1[0] == "x" && tab2[1] == "x" && tab3[2] == "x" || tab1[2] == "x" && tab2[1] == "x" && tab3[0] == "x" || tab1[0] == "x" && tab2[0] == "x" && tab3[0] == "x" || tab1[1] == "x" && tab2[1] == "x" && tab3[1] == "x" || tab1[2] == "x" && tab2[2] == "x" && tab3[2] == "x"
				joueur = 0
				compteur = 9
			elsif tab1 == ["o", "o", "o"] || tab2 == ["o", "o", "o"] || tab3 == ["o", "o", "o"] || tab1[0] == "o" && tab2[1] == "o" && tab3[2] == "o" || tab1[2] == "o" && tab2[1] == "o" && tab3[0] == "o" || tab1[0] == "o" && tab2[0] == "o" && tab3[0] == "o" || tab1[1] == "o" && tab2[1] == "o" && tab3[1] == "o" || tab1[2] == "o" && tab2[2] == "o" || tab3[2] == "o"
				joueur = 1
				compteur = 9
			end
			print "\n"
			puts "Numero de la ligne: "
			pos_x = gets.chomp.to_i
			puts "Numero de la colonne: "
			pos_y = gets.chomp.to_i
			compteur += 1
		end
	end
end

=begin
if joueur == 0
	puts "Le joueur 1 avec les 'x' a gagné"
elsif joueur == 1
	puts "Le joueur 2 avec les 'o' a gagné"
end
=end
puts "Nom du 1er joueur :"
player1 = Player.new(gets.chomp)
first_player = player1.name

puts "Nom du 2eme joueur :"
player2 = Player.new(gets.chomp)
second_player = player2.name

puts first_player
puts second_player

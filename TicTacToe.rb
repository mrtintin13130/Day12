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
  attr_accessor :tab

  def initialize
    @tab = Array.new
    @tab = [" ", " ", " ",     #  1 | 2 | 3
            " ", " ", " ",     #  4 | 5 | 6
            " ", " ", " "]     #  7 | 8 | 9
  end

  def base_board
    return @tab
  end
end

class BoardCase
  attr_accessor :tab, :chosen_case, :symbol

  def initialize(tab, chosen_case, symbol)
    @tab = tab
    @chosen_case = chosen_case
    @symbol = symbol
  end

  def board_update
    if @tab[@chosen_case - 1] == " "
      @tab[@chosen_case - 1] = @symbol
      x = 0
      y = 0
      while @tab[x]
        if y == 1 || y == 3 || y == 6 || y == 8 || y == 11 || y == 13
          print "|"
        elsif x == 2 || x == 5
          print " #{@tab[x]} "
          print "\n-----------\n"
          x += 1
        else
          print " #{@tab[x]} "
          x += 1
        end
          y += 1
      end
      print "\n"
      return @tab
    else
      puts "Case occupée !"
      sleep(2)
    end
  end
end

class Verification
  attr_accessor :tab

  def initialize(tab)
    @tab = tab
  end

  def is_finished
  	joueur = 0
  	if tab[0] == "x" && tab[1] == "x" && tab[2] == "x" || tab[3] == "x" && tab[4] == "x" && tab[5] == "x" || tab[6] == "x" && tab[7] == "x" && tab[8] == "x" || tab[0] == "x" && tab[3] == "x" && tab[6] == "x" || tab[1] == "x" && tab[4] == "x" && tab[7] == "x" || tab[2] == "x" && tab[5] == "x" && tab[8] == "x" || tab[0] == "x" && tab[4] == "x" && tab[8] == "x" || tab[2] == "x" && tab[4] == "x" && tab[6] == "x"
  	  return joueur = 1
  	elsif tab[0] == "o" && tab[1] == "o" && tab[2] == "o" || tab[3] == "o" && tab[4] == "o" && tab[5] == "o" || tab[6] == "o" && tab[7] == "o" && tab[8] == "o" || tab[0] == "o" && tab[3] == "o" && tab[6] == "o" || tab[1] == "o" && tab[4] == "o" && tab[7] == "o" || tab[2] == "o" && tab[5] == "o" && tab[8] == "o" || tab[0] == "o" && tab[4] == "o" && tab[8] == "o" || tab[2] == "o" && tab[4] == "o" && tab[6] == "o"
  	  return joueur = 2
  	else
  		return joueur
  	end
  end
end


puts "Nom du 1er joueur :"
player1 = Player.new(gets.chomp)
player1 = player1.name

puts "Nom du 2eme joueur :"
player2 = Player.new(gets.chomp)
player2 = player2.name

print "\n"

game = Board.new
game = game.base_board
count = 0
help = true
verif = true

while verif == true || count <= 9
  if help == true
    puts "/!\\ Attention /!\\ \nVoici une aide pour le choix des cases :\n1 | 2 | 3\n---------\n4 | 5 | 6\n---------\n7 | 8 | 9"
    help = false
  end
  puts "Choisir une case entre 1 et 9 :"
  choice = gets.chomp.to_i
  if count % 2 == 0 && count != 1
    game = BoardCase.new(game, choice, "x")
    game = game.board_update
  else
    game = BoardCase.new(game, choice, "o")
    game = game.board_update
  end
  verif = Verification.new(game)
  verif = verif.is_finished
  if verif == 0
  	count += 1
  elsif verif == 1
  	puts "#{player1} à gagné !"
  	verif = false
  else verif == 2
  	puts "#{player2} à gagné !"
  	verif = false
  end
end

#codepad.org/Xbdvs7CQ

class WrongNumberOfPlayersError < StandardError; end 
class NoSuchStrategyError < StandardError; end

def rps_game_winner(game)

	#error if there are not 2 players
	raise WrongNumberOfPlayersError unless game.length == 2 
	
	#creates player 1 and 2 from input [["Armando", "P"], ["Dave", "S"]]
	player1 = game[0][1].downcase 
	player2 = game[1][1].downcase

	
	#error if player 1 and 2 do not play "r", "s", or "p"
	raise NoSuchStrategyError unless player1 == "r" || player1 == "s" || player1 == "p"
	raise NoSuchStrategyError unless player2 == "r" || player2 == "s" || player2 == "p"
	
	#if logic to determine which player wins 
	if player1 == player2 || player1 == "r" && player2 == "s" || player1 == "s" && player2 == "p" || player1 == "p" && player2 == "r"  
		return game[0]
	else
		return game[1]
	end
	
		
end

p rps_game_winner([["Armando", "P"], ["Dave", "S"]])

#help from Bob Werthman
def rps_tournament_winner(tournament)

	#base case, if it's a string then there are only 2 players
	if tournament[0][0].is_a?(String)
		return rps_game_winner(tournament)
	else	
		#calls rps_tournament_winner and breaks into rounds
		return rps_tournament_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
	end
		
 	
end

p rps_tournament_winner([ [ ["Armando", "P"], ["Dave", "S"] ], [ ["Richard", "R"], ["Michael", "S"] ], ])	

p rps_tournament_winner([ [ [["Armando", "P"], ["Dave", "S"]], [["Richard", "R"], ["Michael", "S"]], ], [ [["Allen", "S"], ["Omer", "P"]], [["David E.", "R"], ["Richard X.", "P"]] ] ])

	

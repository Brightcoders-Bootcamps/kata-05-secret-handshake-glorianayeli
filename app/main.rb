require_relative 'handshake'
@game = Handshake.new
@game.ask_number
@game.binary_to_array
@game.apply_handshake
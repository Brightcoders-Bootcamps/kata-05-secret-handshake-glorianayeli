# frozen_string_literal: true

class Handshake
  attr_reader :array_binary
  def initialize
    @numero_decimal = 0
    @array_binary = []
    @handshake = []
  end

  def ask_number
    puts 'Ingresa numero decimal'
    @numero_decimal = gets.chomp.to_i
  end

  def binary_to_array
    while @numero_decimal >= 1
      number_par(@numero_decimal) ? @array_binary.unshift(0) : @array_binary.unshift(1)#agrega un cero o un 1 si el numero es par o impar
      @numero_decimal /= 2
    end
  end

  def number_par(numero_decimal)
    numero_decimal.even?#retorna par o impar@
  end

  def apply_handshake
    @array_binary.each_with_index do |number, index|
      @handshake << 'wink' if index.zero? && number == 1
      @handshake << 'double blink' if index == 1 && number == 1
      @handshake << 'close your eyes' if index == 2 && number == 1
      @handshake << 'jump' if index == 3 && number == 1
      reverse_handshake if index == 4 && number == 1
    end
    puts @handshake.to_s
  end

  def reverse_handshake
    @handshake = []
    @array_binary.each_with_index do |number, index|
      @handshake << ('wink') if index == 4 && number == 1
      @handshake << ('double blink') if index == 3 && number == 1
      @handshake << ('close your eyes') if index == 2 && number == 1
      @handshake << ('jump') if index == 1 && number == 1
    end
  end
end

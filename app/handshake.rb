class Handshake
    def initialize
        @numero_decimal = 0
        @array_binary = []
    end

    def ask_number
        puts "Ingresa numero decimal"
        @numero_decimal = gets.chomp.to_i
    end

    #def decimal_to_binary
    #    @numero_decimal=@numero_decimal.to_s(2)
    #    puts "#{@numero_decimal}"
    #    binary_to_array
    #end
   

    def binary_to_array
        while @numero_decimal >= 1 do 
            (number_par(@numero_decimal)) ? @array_binary.unshift(0) : @array_binary.unshift(1)
            @numero_decimal = @numero_decimal / 2
        end
        puts "#{@array_binary}"
    end

    def number_par(numero_decimal)
        numero_decimal%2 == 0
    end

    def apply_handshake
        @array_binary.each_with_index do |number, index|
            if (index == 1 and number == 1) ? 
        end
    end
end
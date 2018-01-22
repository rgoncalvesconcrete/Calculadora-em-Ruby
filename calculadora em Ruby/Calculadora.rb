class Calculadora

continuar = true


private
#Metodo para somar
def Calculadora.somar(primeiroValor, segundoValor)
    
    @primeiroValor = primeiroValor
    @segundoValor = segundoValor

    total = @primeiroValor + @segundoValor

    return total
end


#Metodo para subtrair
def Calculadora.subtrair(primeiroValor, segundoValor)
    @primeiroValor = primeiroValor
    @segundoValor = segundoValor

    #Se algum número for negativo, será realizado o calculo entre números positivos e negativos ex: 2 - -5 = -3
    if @primeiroValor < 0 || @segundoValor < 0
            
        total = @primeiroValor + @segundoValor

        return total
            
        #return puts "O valor da subtração é: #{total}."

    #Caso contrário, será realizada a subtração normalmente
    else
        total = @primeiroValor - @segundoValor

        return total

        #return puts "O valor da subtração é: #{total}."
    end

end


#Metodo para multiplicar
def Calculadora.multiplicar(primeiroValor, segundoValor)
    @primeiroValor = primeiroValor
    @segundoValor = segundoValor

    total = @primeiroValor * @segundoValor

    return total

    #return puts "O valor da multiplicação é: #{total}."
end


#Metodo para dividir
def Calculadora.dividir(primeiroValor, segundoValor)
    @primeiroValor = primeiroValor
    @segundoValor = segundoValor


    if @segundoValor != 0

        total = @primeiroValor / @segundoValor

        return total

    else
          total = "O dividendo não pode ser 0!"
        return total
        
    end
    
end


#Metodo para limpar a tela
def Calculadora.limpatela
    system 'clear'
end

begin
        
    print "\n\n\n Escolha uma das opções abaixo:\n
    1 - Somar\n 
    2 - Subtrair\n
    3 - Multiplicar\n
    4 - Dividir \n
    0 - Sair\n
    Opção: "

    opcao = gets.chomp
    
    while opcao == ""
      limpatela
      print "É necessário escolher uma das opções"
        
      print "\n\n\n Escolha uma das opções abaixo:\n
        1 - Somar\n 
        2 - Subtrair\n
        3 - Multiplicar\n
        4 - Dividir \n
        0 - Sair\n
        Opção: "
    
        opcao = gets.chomp

    end
        
    case opcao.to_i
        when 1
            limpatela

            print "Informe o primeiro valor: "
            primeiroValor = gets.chomp.to_i
                   
            print "Informe o segundo valor: "
            segundoValor = gets.chomp.to_i

            total = somar(primeiroValor, segundoValor)

            puts "O valor da soma é: #{total}"
            
        when 2
            limpatela

            print "Informe o primeiro valor: "
            primeiroValor = gets.chomp.to_i
                    
            print "Informe o segundo valor: "
            segundoValor = gets.chomp.to_i

            total = subtrair(primeiroValor, segundoValor)

            puts "O valor da subtração é: #{total}."
                

        when 3
            limpatela

            print "Informe o primeiro valor: "
            primeiroValor = gets.chomp.to_i
                    
            print "Informe o segundo valor: "
            segundoValor = gets.chomp.to_i

            total = multiplicar(primeiroValor, segundoValor)

            puts "O valor da multiplicação é: #{total}."
                

        when 4
            limpatela

            print "Informe o divisor valor: "
            primeiroValor = gets.chomp.to_i
                    
            print "Informe o dividendo valor: "
            segundoValor = gets.chomp.to_i

            total = dividir(primeiroValor, segundoValor)

            if total.to_s == "O dividendo não pode ser 0!"
                puts "O dividendo não pode ser 0!"
            else
                puts "O valor da divisão é: #{total}."
            end
           


        when 0
            limpatela

            continuar = false

            puts "Programa finalizado!"

                break

        else 
            limpatela

            puts "Opção inválida!"
            
    end

end while continuar != false


end

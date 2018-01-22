require_relative "Calculadora"
require "test/unit"

 
class Teste < Test::Unit::TestCase

    def testando

        #Testes OK
         assert_equal(2, Calculadora.somar(1,1) )
         assert_equal(11, Calculadora.somar(10,1) )

         assert_equal(0, Calculadora.subtrair(1,1) )
         assert_equal(-2, Calculadora.subtrair(-1,-1) )
         assert_equal(-1, Calculadora.subtrair(10,11) )
         assert_equal(1, Calculadora.subtrair(2,1) )

         assert_equal(4, Calculadora.multiplicar(2,2) )
         assert_equal(-4, Calculadora.multiplicar(2,-2) )
         assert_equal(0, Calculadora.multiplicar(0,0) )
         assert_equal(0, Calculadora.multiplicar(1,0) )


         assert_equal(1, Calculadora.dividir(1,1) )
         assert_equal(2, Calculadora.dividir(2,1) )
         assert_equal(5, Calculadora.dividir(10,2) )
         assert_equal("O dividendo não pode ser 0!", Calculadora.dividir(10,0) )


         #Causando a falha

         #assert_equal(0, Calculadora.somar(1,1) )

         #assert_equal(2, Calculadora.subtrair(1,1) )

         #assert_equal(0, Calculadora.multiplicar(2,2) )

         #assert_equal(0, Calculadora.dividir(1,1) )

         #assert_equal("Erro!", Calculadora.dividir(10,0) )

    end

end
# encoding: utf-8
require 'Question/simple_expec'
describe Question::SimpleExpec  do

	before :each do 
		@nodo2 = Node.new(7,nil)
		@nodo = Node.new(2,@nodo1)
		@milista = Lista.new(4)
		@nodo1 = Node.new(4,nil)

	end

	describe "Clase lista" do
		it "Comprobacion de la cabeza de la lista" do
			@milista.head.should eq(@nodo1)
		end

		it "Comprobacion del valor del nodo" do
			@nodo2.value.should eq(7)
		end

		it "Extraer primer elemento" do
			@milista.pop.should eq(4)
		end

		it "Añadir valor (push)" do
			@milista.push(8)    
		end

		it "Prueba para la siguiente relaciónn de preguntas de selección simple." do
 			@p1 = "1.-)¿Cuál es la salida del siguiente código Ruby?\nclass Xyz\n\tdef pots\n\t\t@nice\n\tend\nend\n\nxyz = Xyz.new\np xyz.pots"
			@opP1 = {
				"a" => "#<Xyz:0xa000208>",
				"b" => "nil",
				"c" => "0",
				"d" => "Ninguna de las anteriores"
			}
			@p2 = "2.-)La siguiente definicion de hash en Ruby es valida\nhash_raro = {\n\t[1,2,3] => Object.new(),\n\tHash.new => :toto\n}"
			@opP2 = {
				"a" => "Cierto",
				"b" => "Falso",
			}
			@p3 = "3.-)¿Cual es la salida del siguiente codigo en Ruby?\nclass Array\n\tdef say_hi\n\t\t\"HEY!\"\n\tend\nend\n\np [1, \"bob\"].say_hi"
			@opP3 = {
				"a" => "1",
				"b" => "Bob",
				"c" => "HEY!",
				"D" => "Ninguna de las anteriores"
			}
			@p4 = "4.-)¿Cual es el tipo del objeto en el siguiente codigo en Ruby?\nclass Objeto\nend"

			@opP4 = {
				"a" => "Una instancia de la clase Class",
				"b" => "Una constante",
				"c" => "Un objeto",
				"D" => "Ninguna de las anteriores"
			}

			@p5 ="5.-)Es apropiado que una clase Tablero herede de una clase juego."

			@opP5 ={
				"a" => "Cierto",
				"b" => "Falso"
			}
			@NP1 = SimpleSelection.new(@p1,@opP1)
 			@NP2 = SimpleSelection.new(@p2,@opP2)
 			@NP3 = SimpleSelection.new(@p3,@opP3)
 			@NP4 = SimpleSelection.new(@p4,@opP4)
  			@NP5 = SimpleSelection.new(@p5,@opP5)
 			Examen = Lista.new(@NP1)
 			Examen.push(@NP2)
 			Examen.push(@NP3)
 			Examen.push(@NP4)
 			Examen.push(@NP5)

		end

	end
end


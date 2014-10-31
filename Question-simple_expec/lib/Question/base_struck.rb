Pregunta = Struct.new(:text,:right,:distractor) do
	def descripcion
		"#{text}#{right}#{distractor}\n"
	end
end

uno = Pregunta.new("¿que devuelve?\n class Xyz\n def pots\n @nice\n end\n end\n xyz = Xyz.new\n p xyz.pots\n", "nil\n", "#<Xyz:0xa000208>\n 0\n ninguna de las anteriores")

dos = Pregunta.new("¿Es valida la definicion?\n hash_raro = {\n [1, 2, 3] => Object.new(),\n Hash.new => :toto\n }\n", "cierto\n", "falso\n")

tres = Pregunta.new("¿cual es la salida?\n class Array\n def say_hi\n HEY\n end\n end\n p[1, bob].say_hi\n", "HEY!\n", "1\n bob\n ninguna de las anteriores\n")

cuatro = Pregunta.new("¿Cual es el tipo de objeto?\n class Objeto\n end\n", "Un objeto\n", "Una instancia de la clase Class\n Una constante\n ninguna de las anteriores\n")

cinco = Pregunta.new("¿Es apropiado que una clase tablero herede de una clase juego?\n", "Cierto\n", "False\n")

puts uno.descripcion
puts dos.descripcion
puts tres.descripcion
puts cuatro.descripcion
puts cinco.descripcion

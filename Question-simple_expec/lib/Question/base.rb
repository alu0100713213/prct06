module Question
   class SimpleExpec
    
    attr_accessor :text, :right, :distractor
    
    @@count = 0
    
    def self.id #es un metodo de clase por eso utilizamos el sef
      @@count
    end
    
    def initialize(args)
      @text = args[:text]
      raise ArgumentError, 'Specify :text' unless @text
      @right = args[:right]
      raise ArgumentError, 'Specify :right' unless @right
      @distractor = args[:distractor]
      raise ArgumentError, 'Specify :distractor' unless @distractor
      if args[:id] #identificador para la pregunta si no esta definido lo hacemos
         @id =args[:id] 
      else
	 args[:id] = @@count #el @@ es porque es un atributo de la clase un @ es un atributo de la instancia
	 
      end
      @@count += 1
    end
    
    
    def to_html
      #binding .pry
      options = @distractor+[@right]
      options = options.shuffle # para mezclar el array para que no este la correcta siempre al final
      s = ' '
      options.each do |options|
	s += %Q{<input type = "radio" value= "#{options}" class="simpleexpec" name =@i> #{options}\n}
      end
      "#{@text}<br/>\n#{s}\n"  
           
    end
    
  end
end

if __FILE__ == $0 then #si se utiliza desde un require estas lineas no se ejecutan pero si lo ejecutamos en consola funciona
  qq = Question::SimpleExpec.new(text: '2+2 =', right: 4, distractor: [9,3,1])
  puts qq.to_html

=begin 
ar = [Question::SimpleExpec.new(text: "¿que devuelve?\n class Xyz\n def pots\n @nice\n end\n end\n xyz = Xyz.new\n p xyz.pots", right: 'nil', distractor: ['#<Xyz:0xa000208>',0,'ninguna de las anteriores']), Question::SimpleExpec.new(text: "¿Es valida la definicion?\n hash_raro = {\n [1, 2, 3] => Object.new(),\n Hash.new => :toto\n }\n", right: 'cierto', distractor: ['falso']), Question::SimpleExpec.new(text: "¿cual es la salida?\n class Array\n def say_hi\n HEY\n end\n end\n p[1, bob].say_hi\n", right: 'HEY!', distractor: ['1','bob','ninguna de las anteriores']), Question::SimpleExpec.new(text: "¿Cual es el tipo de objeto?\n class Objeto\n end\n", right: 'Un objeto', distractor: ['Una instancia de la clase Class','Una constante','ninguna de las anteriores']), Question::SimpleExpec.new(text: "¿Es apropiado que una clase tablero herede de una clase juego?\n", right: 'Cierto', distractor: ['False'])]
  puts ar[0].to_html
  puts ar[1].to_html
  puts ar[2].to_html
  puts ar[3].to_html
  puts ar[4].to_html
=end


end





























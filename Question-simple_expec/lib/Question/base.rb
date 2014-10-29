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
  
end

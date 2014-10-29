require 'Question/simple_expec'

module Question
 class SimpleExpec
    describe Question::SimpleExpec do
       
      before :each do
	@q = Question::SimpleExpec.new(:text => '2+2 =', :right => 4, :distractor => [9,3,1])
      end
      
      
      context "Cuando se construye una pregunta" do
	it "Tiene que tener texto y algunas opciones" do
	  expect(@q.text) == '2+2 ='
	end
      end
      
      context "Cuando se construye una respuesta" do
	it "Tiene que tener un valor y ser el correcto" do
	  expect(@q.right) == 4
	end
      end
      
      context "Cuando se construye una serie de valores" do
	it "Tiene que tener un array de valores falsos" do
	  expect(@q.distractor) == [9,3,1]
	end
      end
    
      
      
      it "Tiene que tener tres componentes" do
	#expect{Question::SimpleChoice.new(:text => '5*8=?')}
	expect{Question::SimpleExpec.new(:text => '5*8=?')}.to raise_error(ArgumentError)
      end
      
      context "Cuando convertimos..." do
	
	it "Puede ser convertido en html" do
	  expect(@q).to respond_to :to_html	  
	end
      end
      
    end 
    
    
  end
end

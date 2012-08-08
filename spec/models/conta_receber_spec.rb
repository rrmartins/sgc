require 'spec_helper'

describe ContaReceber do
  context "attributes" do
    it { should respond_to(:nome) }    
    it { should respond_to(:descricao) }
    it { should respond_to(:data_vencimento) }
    it { should respond_to(:valor) }
    it { should respond_to(:user_id) }
  end
  
  context "Call" do
    it { should belong_to(:user) } 
    it { should belong_to(:pessoa_receber) }
  end
   
  context "Validation" do
    before(:each) do
      @conta = ContaReceber.new
    end
    
    context "Sucess" do
      before(:each) do 
        @conta.data_vencimento = DateTime.now
        @conta.nome = "Vivo"
        @conta.valor = 32
        @conta.descricao = "3G"
      end
      it { @conta.should be }
    end
    
    context "Fail" do
      before(:each) do 
        @conta.data_vencimento = DateTime.now-1
      end
      it { @conta.should_not be_valid }
    end

    context "Fail 2" do
      it { @conta.should_not be_valid }
    end
  end 

end
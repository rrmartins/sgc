require 'spec_helper'

describe PessoaReceber do
  context "attributes" do
    it { should respond_to(:user_id) }
    it { should respond_to(:nome) }    
    it { should respond_to(:tel) }
    it { should respond_to(:email) }    
  end
  
  context "Call" do
    it { should belong_to(:user) }
  end
  
  context "Validation" do
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:tel) }
  end
end

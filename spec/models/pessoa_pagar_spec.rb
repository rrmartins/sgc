require 'spec_helper'

describe PessoaPagar do
  context "attributes" do
    it { should respond_to(:user_id) }
    it { should respond_to(:nome) }    
    it { should respond_to(:tel) }
    it { should respond_to(:email) }    
  end
end
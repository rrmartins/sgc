require 'spec_helper'

describe User do
  
  context "attributes" do
    it { should respond_to(:email) }    
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
    it { should respond_to(:remember_me) }
    it { should respond_to(:name) }
  end

  context "Call" do
    it { should have_many(:conta_pagars) } 
    it { should have_many(:pessoa_pagars) }
    it { should have_many(:pessoa_recebers) } 
    it { should have_many(:conta_recebers) }
  end
  
end

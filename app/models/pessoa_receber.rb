class PessoaReceber < ActiveRecord::Base
  attr_accessible :email, :nome, :tel
  belongs_to :user

  validates_presence_of :nome, :tel
	validates :email,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
end
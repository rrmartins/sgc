class PessoaPagar < ActiveRecord::Base
	validates_presence_of :nome, :tel
	validates :email,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
end
# encoding: utf-8
class ContaPagar < ActiveRecord::Base
  belongs_to :pessoa_pagar
  belongs_to :user
  attr_accessible :data_vencimento, :descricao, :nome, :user_id, :valor

  validates_presence_of :nome, :descricao, :valor

  validate :data_vencimento?

  def data_vencimento?
    unless self.data_vencimento.nil?
      if self.data_vencimento.to_date < DateTime.now.to_date
  		  errors.add(:data_vencimento, " näo pode ser menor que hoje.")
        return false
      else
    	  return true
      end
    else
  	  return false
    end
  end
end
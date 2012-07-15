class ContaReceber < ActiveRecord::Base
  belongs_to :pessoa_receber
  belongs_to :user
  attr_accessible :data_vencimento, :descricao, :nome, :user_id, :valor

  validates_presence_of :nome, :descricao, :valor

  validate :data_venc

  def data_venc
  	if self.data_vencimento < Date.today.to_date
			errors.add(:data_vencimento, " näo pode ser menor que hoje.")
      return false
    else
    	return true
    end
  end
end

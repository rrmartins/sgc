class ContaPagar < ActiveRecord::Base
  belongs_to :pessoa_pagar
  belongs_to :user

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
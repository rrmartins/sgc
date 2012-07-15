class AddUserIdToPessoaReceber < ActiveRecord::Migration
  def change
    add_column :pessoa_recebers, :user_id, :integer
  end
end

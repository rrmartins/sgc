class CreateContaRecebers < ActiveRecord::Migration
  def change
    create_table :conta_recebers do |t|
      t.string :nome
      t.string :descricao
      t.date :data_vencimento
      t.references :pessoa_receber
      t.float :valor
      t.integer :user_id

      t.timestamps
    end
    add_index :conta_recebers, :pessoa_receber_id
  end
end

class CreateContaPagars < ActiveRecord::Migration
  def change
    create_table :conta_pagars do |t|
      t.string :nome
      t.string :descricao
      t.date :data_vencimento
      t.references :pessoa_pagar
      t.float :valor

      t.timestamps
    end
    add_index :conta_pagars, :pessoa_pagar_id
  end
end

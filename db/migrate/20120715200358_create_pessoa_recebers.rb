class CreatePessoaRecebers < ActiveRecord::Migration
  def change
    create_table :pessoa_recebers do |t|
      t.string :nome
      t.string :email
      t.string :tel

      t.timestamps
    end
  end
end

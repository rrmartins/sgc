class CreatePessoaPagars < ActiveRecord::Migration
  def change
    create_table :pessoa_pagars do |t|
      t.string :nome

      t.timestamps
    end
  end
end

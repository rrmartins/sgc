class AddEmailTelToPessoaPagars < ActiveRecord::Migration
  def change
    add_column :pessoa_pagars, :email, :string
    add_column :pessoa_pagars, :tel, :string
  end
end

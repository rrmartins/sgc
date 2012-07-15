class AddUserIdToPessoaPagars < ActiveRecord::Migration
  def change
    add_column :pessoa_pagars, :user_id, :integer
  end
end

class AddUserIdToContaPagars < ActiveRecord::Migration
  def change
    add_column :conta_pagars, :user_id, :integer
  end
end

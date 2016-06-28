class AddWinnerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :winner, :boolean, :default => false
  end
end

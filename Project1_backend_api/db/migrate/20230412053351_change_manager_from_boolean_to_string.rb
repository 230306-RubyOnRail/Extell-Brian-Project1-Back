class ChangeManagerFromBooleanToString < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :manager, :string
  end
end
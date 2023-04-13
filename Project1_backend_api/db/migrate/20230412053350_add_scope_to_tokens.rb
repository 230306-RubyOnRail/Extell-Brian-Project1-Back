class AddScopeToTokens < ActiveRecord::Migration[7.0]
  def change
    add_column :tokens, :scope, :string
  end
end

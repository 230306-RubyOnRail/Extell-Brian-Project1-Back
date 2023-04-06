class CreateTokens < ActiveRecord::Migration[7.0]
  def change
    create_table :tokens do |t|
      t.references :user, null: false, foreign_key: true
      t.string :value, limit: 16

      t.timestamps
    end
  end
end

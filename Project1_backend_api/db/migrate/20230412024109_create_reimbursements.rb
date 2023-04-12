class CreateReimbursements < ActiveRecord::Migration[7.0]
  def change
    create_table :reimbursements do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.decimal :amount, precision: 6, scale: 2
      t.string :content

      t.timestamps
    end
  end
end

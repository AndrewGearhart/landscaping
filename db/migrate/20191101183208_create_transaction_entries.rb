class CreateTransactionEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_entries do |t|
      t.string :cause
      t.date :cause_date
      t.float :amount
      t.integer :source_id, null: false
      t.integer :destination_id, null: false

      t.timestamps
    end
    add_foreign_key :transaction_entries, :accounts, column: :source_id
    add_foreign_key :transaction_entries, :accounts, column: :destination_id
    add_index :transaction_entries, :source_id
    add_index :transaction_entries, :destination_id
  end
end

class Account < ApplicationRecord
  has_many :credits, foreign_key: :destination_id, class_name: "TransactionEntry"
  has_many :debits, foreign_key: :source_id, class_name: "TransactionEntry"
end

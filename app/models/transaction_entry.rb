class TransactionEntry < ApplicationRecord
  belongs_to :source_id
  belongs_to :destination_id
end

require "rails_helper"

RSpec.describe Account do
    describe 'table' do
        it {is_expected.to have_db_column(:name)}
    end

  describe 'associations' do
    it {is_expected.to have_many(:credits).class_name("TransactionEntry").with_foreign_key(:destination_id)}
    it {is_expected.to have_many(:debits).class_name("TransactionEntry").with_foreign_key(:source_id)}
  end
end

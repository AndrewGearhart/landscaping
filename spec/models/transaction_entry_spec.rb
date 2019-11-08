require "rails_helper"

RSpec.describe TransactionEntry do
    describe 'table' do
        it {is_expected.to have_db_column(:cause)}
        it {is_expected.to have_db_column(:cause_date).of_type(:date)}
        it {is_expected.to have_db_column(:amount).of_type(:float)}
        it {is_expected.to have_db_column(:source_id)}
        it {is_expected.to have_db_index(:source_id)}
        it {is_expected.to have_db_column(:destination_id)}
        it {is_expected.to have_db_index(:destination_id)}
    end
    
end

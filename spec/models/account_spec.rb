require "rails_helper"

RSpec.describe Account do
    describe 'table' do
        it {is_expected.to have_db_column(:name)}
    end
end

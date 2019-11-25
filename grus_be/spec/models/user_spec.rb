require_relative '../rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many :tasks }

    it 'should only allow unique usernames' do
      create(:user, username: "originally_unique")

      expect do 
        create(:user, username: "originally_unique") 
      end.to raise_error(ActiveRecord::RecordNotUnique)
    end
  end
end

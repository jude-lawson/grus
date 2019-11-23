require_relative '../rails_helper'

RSpec.describe 'User' do
  context 'default test' do
    it 'should tell the truth' do
      expect(User.tell_the_truth).to eq true
    end
  end
end
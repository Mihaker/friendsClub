require 'rails_helper'

describe User, type: :model do
let(:user) { FactoryBot.create :user}

  it "should create a new user" do
    expect(user).to be_valid
  end

  it 'when first_name not present' do
    user = FactoryBot.build(:user, first_name: '')

    expect(user).not_to be_valid
  end

  it 'when last_name not present' do
    user = FactoryBot.build(:user, last_name: '')

    expect(user).not_to be_valid
  end

  it 'when email not present' do
    user = FactoryBot.build(:user, email: '')

    expect(user).not_to be_valid
  end

  it 'when birthday not present' do
    user = FactoryBot.build(:user, birthday: '')

    expect(user).not_to be_valid
  end
end

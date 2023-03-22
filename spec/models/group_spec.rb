require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    Group.new(user_id:1, name:"Financial", icon:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtLHJ5rsDX4MDD0RKixJpMM733IVFMUn42ag&usqp=CAU")
  end

  before { subject.save }

  it 'user_id should not be empty' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it 'name should not be empty' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'icon should not be empty' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end

  it 'name should be equal to Financial' do
    expect(subject.name).to eql 'Financial'
  end

  it 'user_id should be 1' do
    expect(subject.user_id).to eql 1
  end
end
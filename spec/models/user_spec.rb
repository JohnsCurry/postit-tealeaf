require 'rails_helper'
require 'spec_helper'


describe User do
  it {should have_many(:posts)}
  
  it "saves itself" do
    john = User.new(username: "john")
    john.save
    expect(User.first).to eq(john)
  end
end

require 'rails_helper'
require 'spec_helper'

describe Category do

  it "saves itself" do
    politics = Category.new(name: "politics")
    politics.save
    expect(Category.first).to eq(politics)
  end
end

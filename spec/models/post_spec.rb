require 'rails_helper'
require 'spec_helper'

describe Post do
  it {should belong_to(:creator)} #user.
  it {should have_many(:comments)}
  it "saves itself" do
    first = Post.new(url: "http://www.google.com", title: "Google", description: "this is a search engine")
    first.save
    expect(Post.first).to eq(first)
  end
end

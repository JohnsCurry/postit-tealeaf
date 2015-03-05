require 'rails_helper'
require 'spec_helper'

describe Comment do
  it {should belong_to(:creator)}
  it {should belong_to(:post)}
  
  it "saves itself" do
    john = User.create(username: "john")
    post = Post.create(url: "http://www.google.com", title: "Google", description: "this is a search engine")
    comment = Comment.new(body: "I am commenting on this post right here", user_id: john.id, post_id: post.id)
    comment.save
    expect(Comment.first).to eq(comment)
  end
end

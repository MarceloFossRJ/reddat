class Link < ApplicationRecord
  validates :url, presence: true#, uniqueness: true
  validates :title, presence: true

  def upvote
    increment!(:upvotes)
  end

  def score
    upvotes - downvotes
  end

  def self.hottest_first
    order("upvotes - downvotes DESC")
  end

  def self.newest_first
    order(created_at: :desc)
  end
end

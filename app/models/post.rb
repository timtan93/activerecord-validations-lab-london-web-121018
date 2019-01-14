require 'pry'

class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  # validates :clickbait, acceptance: true
  validates :non_clickbait, absence: { message: "DIS IS CLICKBAIT" }

  def non_clickbait
    if self.title
      return true if !self.title.include?("Won't Believe" || "Top" || "Secret" || "Guess")
    end

    false
  end

end

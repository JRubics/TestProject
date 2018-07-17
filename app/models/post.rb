class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  class << self
    def markdown
      Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    end
  end
  def getBody()
    self.class.markdown.render(body)
  end

  def self.search_title(search)
    where("title LIKE ?", "%#{search}%")
  end

  def self.search_body(search)
    where("body LIKE ?", "%#{search}%")
  end
end

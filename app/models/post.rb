class Post < ApplicationRecord
  belongs_to :user
  class << self
    def markdown
      Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    end
  end
  def getBody()
    self.class.markdown.render(body)
  end
end

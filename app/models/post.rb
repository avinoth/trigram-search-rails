class Post < ActiveRecord::Base
  def self.text_search(query)
    self.where("similarity(title, ?) > 0.3", query).order("similarity(title, #{ActiveRecord::Base.connection.quote(query)}) DESC")
  end
end

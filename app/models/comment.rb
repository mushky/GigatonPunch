class Comment < ActiveRecord::Base
  belongs_to :video
  attr_accessible :body, :commenter
end

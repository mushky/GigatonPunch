class Comment < ActiveRecord::Base
  belongs_to :video
  belongs_to :user

  attr_accessible :body, :commenter
end

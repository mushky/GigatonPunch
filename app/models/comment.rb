class Comment < ActiveRecord::Base
	before_action :authenticate_user!, :except => [:show, :index]

  belongs_to :video
  belongs_to :user

  attr_accessible :body, :commenter
end

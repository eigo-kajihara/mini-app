class Tweet < ActiveRecord::Base
	belongs_to :user
    validates_presence_of :text, :user_id
end

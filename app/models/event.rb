class Event < ActiveRecord::Base
	#validates_presence_of :date, :title
  mount_uploader :newsletter 
end

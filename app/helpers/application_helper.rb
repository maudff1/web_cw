module ApplicationHelper
	def base_Title 
	default_title = "Cheam Croquet and Bowl"
	if @Title.nil?
		default_title 
	else 
		"#{default_title}| #{@Title}"
	end 
end
end

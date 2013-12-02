class CheamCroquetController < ApplicationController
  def home
  	@Title = "home"
  end
  def about_the_club
  	@Title = "about the club"
  end 
  def how_to_join
  	  	@Title = "how to join"
 end
  def programme 
 @Title = "programme"
  @events = Event.all
  end 
  def how_to_get_there 
    @Title = "How to get there"
  end
  def links_to_croquet_site
    @Title = "Links to Croquet Site"
  end 
  
  def newsletter 
    @tasks = Newsletter.all
    @task_year = @tasks.group_by{|t| t.date.year}
  end 
  
  def club_matters
  end
  def what_you_need
  end
end

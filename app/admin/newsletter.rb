ActiveAdmin.register Newsletter do
  controller do 
    def permitted_params
      params.permit(:newsletter => [:title, :date, :pdf])
		end
  end 

end

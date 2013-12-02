ActiveAdmin.register Event do
  controller do
		def permitted_params
      params.permit(:event => [:title, :date, :newsletter, :logo, ])
		end
	end

end

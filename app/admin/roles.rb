ActiveAdmin.register Role do
	index do
    	column :name
    	column "Created At", :created_at
  	end
end

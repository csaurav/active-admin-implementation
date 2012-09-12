ActiveAdmin.register User do

	index do
	    column :email
	    column "Role" do |user|
	      user.roles.map { |p| p.name }.join(' ')
	    end
	    column "Created at", :created_at
	    default_actions
  	end

  	form do |f|
  		f.inputs "User Details" do
          f.input :email
          f.input :password
          f.input :password_confirmation
          f.input :roles # don't forget this one!
        end

        f.buttons
    end    

    show do |details|
      attributes_table do
        row :email
        row "Role" do |role|
        	user.roles.map {|p| p.name}.join('')
        end
      end
      active_admin_comments
    end
  
end

ActiveAdmin.register Team do
	index do
    column :name
    column "Team Owner", :owner
    column "Created at", :created_at
    default_actions
  end

  form do |f|
  		f.inputs "Team Details" do
          f.input :name
          f.input :owner, :as => :select, :collection => Owner.all.map {|u| [u.email, u.id]} # don't forget this one!
        end

        f.buttons
  end    

  show do |details|
      attributes_table do
        row :name
        row :owner
        row :created_at 
      end
      active_admin_comments
  end
end

ActiveAdmin.register Player do

	index do
	    column "Player Name", :name
	    column "Email", :email
	    column "GOC", :goc

	    column "Team", :team

	    column "Foreign Player ?", :is_foreign_player

	    column "Created at", :created_at
	    default_actions
  	end

 	form do |f|
  		f.inputs "Player Details" do
          f.input :name
          f.input :email
          f.input :goc
          f.input :team, :as => :select, :collection => Team.all.map {|t| [t.name, t.id]} # don't forget this one!
          f.input :is_foreign_player, :as => :radio
        end

        f.buttons
  	end    
    show do |details|
      attributes_table do
        row :name
        row :email
        row :goc
        row :team
        row :is_foreign_player
      end
      active_admin_comments
    end
  
end

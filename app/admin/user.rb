ActiveAdmin.register User do


index do
 	column :id
	column :email
	column :password_hash
	column :password_salt
 	default_actions
 end

  form do |f|
 	f.inputs "Admin_user New" do
    f.input :id
    f.input :email
  end

    
end
filter :email
end

ActiveAdmin.register UserCommand do

index do
 	column :id
	column :frequency
	column :history_id
	column :uniq_command
 	default_actions
 end
	filter :frequency
	filter :uniq_command
	filter :history_id
end

namespace :chrobot do

  desc "Deletes all successfully finished items that are at least a three days old"
  task :delete_finished => :environment do
    ChrobotItem.delete_all(["status = ? AND completed_on < ? ", ChrobotItem::FINISHED, Time.now.utc - 3.days])
  end
  
end
class AddAdminToJobs < ActiveRecord::Migration
  def change
    add_reference :jobs, :admin, index: true, foreign_key: true
  end
end

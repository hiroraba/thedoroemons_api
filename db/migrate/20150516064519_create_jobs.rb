class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :job_id, :null => false
      t.integer :message_id
      t.integer :user_id, :null => false
      t.boolean :is_finished, :default => false
      t.timestamps
    end
  end
end

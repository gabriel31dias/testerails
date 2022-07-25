class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :skills
      t.integer :recruiter_id
      t.integer :status
      t.timestamps
    end
  end
end

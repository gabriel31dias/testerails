class CreateSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :email
      t.string :mobile_phone
      t.string :resume
      t.integer :job_id

      t.timestamps
    end
  end
end

class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :start_date
      t.string :end_date
      t.string :job_title
      t.string :company_name
      t.string :details
      t.integer :student_id

      t.timestamps
    end
  end
end

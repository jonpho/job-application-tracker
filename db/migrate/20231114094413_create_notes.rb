class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes do |t|
      t.references :company, null: false, foreign_key: true
      t.date :date
      t.string :job_application_note

      t.timestamps
    end
  end
end

class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.date :date_applied
      t.string :company_name
      t.string :application_status
      t.string :job_title
      t.string :company_ats_link
      t.string :referral

      t.timestamps
    end
  end
end

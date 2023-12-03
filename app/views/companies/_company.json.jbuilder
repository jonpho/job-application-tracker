json.extract! company, :id, :date_applied, :company_name, :application_status, :job_title, :company_ats_link, :referral, :created_at, :updated_at
json.url company_url(company, format: :json)

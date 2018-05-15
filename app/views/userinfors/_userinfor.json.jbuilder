json.extract! userinfor, :id, :first_name, :last_name, :photo, :birth_day, :phone, :gender, :address, :created_at, :updated_at
json.url userinfor_url(userinfor, format: :json)

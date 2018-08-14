  json.id contact.id
  json.first_name contact.first_name
  json.last_name contact.last_name
  json.email contact.email
  json.phone_number contact.phone_number
  json.groups contact.groups

  json.formatted do
    json.month_day_year contact.month_day_year
  end
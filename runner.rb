require 'unirest'

response = Unirest.post("localhost:3000/api/contacts",
  parameters: {
  input_first_name:  "Martha",
  input_last_name:  "Mailroom",
  input_email:  "martha.mailroom@email.com",
  input_phone_number:  "3125551212"
  }
)

p response.body
class Auth
  def self.create_token(user_id)
    payload = { user_id: user_id }

    JWT.encode(payload, "monkeys_in_the_jungle", "HS256")
    JWT.encode
  end
end

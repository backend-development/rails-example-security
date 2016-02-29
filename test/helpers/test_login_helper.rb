def sign_in(user)
  get sessions_create_url, params: {
    email: user.email,
    password: user.password
  }
end

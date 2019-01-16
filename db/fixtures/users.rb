User.seed do |s|
  s.id    = 1
  s.name = "admin"
  s.email = "admin@example.com"
  s.admin  = true
  s.password = "admin"
  s.password_confirmation = "admin"
end
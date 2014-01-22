# Generated with RailsBricks
# Initial seed file to use with Simple User Model

# Temporary admin account
u = User.create!(
  username: "admin",
  email: "admin@example.com",
  password: "1234",
  password_confirmation: "1234",
  admin: true
)

# Prompt for test data
STDOUT.puts
STDOUT.print "Do you want to seed test data?(y/n):"
result = STDIN.gets.chomp

if result == "y"
  
  # Test user accounts
  STDOUT.puts
  STDOUT.print "How many test users?:"
  users_amount = STDIN.gets.chomp.to_i
  (1..users_amount).each do |i|
    u = User.create!(
      username: "user#{i}",
      email: "user#{i}@example.com",
      password: "1234",
      password_confirmation: "1234"
    )
  end
  
end

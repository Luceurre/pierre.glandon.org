
class AdminController < ActionController::Base
  http_basic_authenticate_with name: "admin", password: "1234"
end
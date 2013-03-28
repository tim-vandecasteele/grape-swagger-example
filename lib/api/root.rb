module API
  class Root < Grape::API
    mount API::Slots
    add_swagger_documentation({:markdown => true})
  end
end

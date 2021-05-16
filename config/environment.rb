# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
rails g serializer Bird
rails g serializer Location
rails g serializer Sighting

class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location
end
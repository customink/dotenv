# If you use gems that require environment variables to be set before they are
# loaded, then list `dotenv-rails` in the `Gemfile` before those other gems and
# require `dotenv/rails-now`.
#
#     gem "dotenv-rails", :require => "dotenv/rails-now"
#     gem "gem-that-requires-env-variables"
#

# Needed for dotenv to work in Rails 3.0
# https://github.com/bkeepers/dotenv/issues/151
module Rails
  class Railtie
     def self.instance
       @instance ||= new
     end
  end
end
require "dotenv/rails"

Dotenv::Railtie.load

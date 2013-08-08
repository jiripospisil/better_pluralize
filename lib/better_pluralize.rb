require "better_pluralize/version"

module BetterPluralize
  class Railtie < ::Rails::Railtie
    initializer "better_pluralize" do |app|
      ActiveSupport.on_load(:action_view) do
        require "better_pluralize/helpers"
      end
    end
  end
end

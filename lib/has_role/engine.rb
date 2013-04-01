# coding: utf-8
module HasRole
  class Engine < ::Rails::Engine
    isolate_namespace HasRole
    engine_name "has_role"

    initializer "has_role.includers" do |app|
      ActiveRecord::Base.send :include, HasRole::Model
    end
  end
end

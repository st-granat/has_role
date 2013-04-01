# coding: utf-8
module HasRole
  module Model
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def has_role
        # admin - Administrator
        # user - Simple User
        # You can override this in your model ...
        def roles_mapper
          ["admin", "user"]
        end

        roles_mapper.each do |role|
          scope role.pluralize, where(:role => role)
          define_method "#{role.to_s}?" do
            self.has_role?(role.to_s)
          end
        end

        def roles_form_select
          User.roles_mapper.collect { |role| [I18n.t("has_role.#{role}"), role] }
        end

        unless included_modules.include? InstanceMethods
          include InstanceMethods
        end
      end
    end

    module InstanceMethods
      def role_symbols
        User.roles_mapper.map { |role| role.to_sym }
      end

      def has_role?(role)
        self.role == role
      end
    end
  end
end

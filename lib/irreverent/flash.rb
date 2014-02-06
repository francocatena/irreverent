module Irreverent
  module Flash
    def to_html
      set_flash_message unless get?
      super
    end

    private

      def set_flash_message
        return if controller.flash[status].present?

        message = i18n_lookup
        controller.flash[status] = message if message.present?
      end

      def i18n_lookup
        I18n.t lookup, scope: :flash, default: default, resource_name: resource_name
      end

      def status
        has_errors? ? :alert : :notice
      end

      def namespace
        controller.controller_path.gsub '/', '.'
      end

      def action
        controller.action_name
      end

      def lookup
        [namespace, action, status].join '.'
      end

      def default
        ['actions', action, status].join('.').to_sym
      end

      def resource_name
        resource.class.model_name.human
      end
  end
end

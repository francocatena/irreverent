require 'action_controller'
require 'irreverent/flash'

module Irreverent
  class AppResponder < ActionController::Responder
    include Flash
  end
end

ActionController::Base.responder = Irreverent::AppResponder

require 'active_support/i18n'

I18n.load_path << File.expand_path('../irreverent/locales/en.yml', __FILE__)

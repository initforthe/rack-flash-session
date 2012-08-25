require 'rack/utils'

module Rack
  module Flash
    module Session
      class FlashSession

        def initialize(app, *args)
          args = ['_session_id'] if args.empty?
          @app = app
          @session_keys = args
        end

        def call(env)
          if env['HTTP_USER_AGENT'] =~ /^(Adobe|Shockwave) Flash/ then
            params = ::Rack::Request.new(env).params
            env['HTTP_COOKIE'] = params.select do |k,v|
              @session_keys.include?(k) or regex_match(k)
            end.map{|k,v| [k, ::Rack::Utils.escape(v)].join('=')}.join(';')
          end
          @app.call(env)
        end

        private
        
        def regex_match(value)
          contains = false
          @session_keys.each {|k| contains = true unless value.match(k).blank? }
          contains
        end

      end
    end
  end
end

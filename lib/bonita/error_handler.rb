# frozen_string_literal: true
module ErrorHandler
  def self.included(base)
    base.send(:resources) do
      default_handler do |response|
        next if (200...299).cover?(response.status)
        raise Bonita::Error.new(response.status, response.body)
      end
    end
  end
end

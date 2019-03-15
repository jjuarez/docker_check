# frozen_string_literal: true

require 'app/version'

module App
  #
  # The application itself
  class Cli
    CHECK_COMMANDS = %i[
      check
      noop
    ].freeze

    def self.a_check?(command)
      CHECK_COMMANDS.include?(command.to_sym)
    end

    def self.do_check(options)
      $stdout.puts "Parameters: #{options}"
      $stdout.puts "Environment: #{ENV.inspect}"
    end

    def self.do_work(options)
      $stdout.puts "Doing the work with these arguments: #{options}"
    end

    def self.run(options = {})
      if a_check?(options[:command])
        do_check(options[:arguments])
      else
        do_work(options[:arguments])
      end
    end
  end
end

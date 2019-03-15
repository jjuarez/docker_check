#!/usr/bin/env ruby
# string_frozen_literal: true

#
# The Application
class Application
  CHECK_COMMANDS = %i[
    check
    noop
  ].freeze

  def self.a_check?(options)
    CHECK_COMMANDS.include?(options&.first&.to_sym)
  end

  def self.do_check(options)
    $stdout.puts(options)
    $stdout.puts(ENV.inspect)
  end

  def self.do_work(options)
    $stdout.puts("Ok then, let's do the work with: #{options}")
  end

  def self.run(options)
    if a_check?(options)
      do_check(options)
    else
      do_work(options)
    end
  end
end

# ::main::
if $PROGRAM_NAME == __FILE__
  Application::run(ARGV)
end

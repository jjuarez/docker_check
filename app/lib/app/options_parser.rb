# frozen_string_literal: true

require 'choice'
require 'app/version'

Choice.options do
  header ''
  header 'Specific options:'

  option :command do
    short   '-c'
    long    '--command=[check,work]'
    desc    'The command to execute'
    default 'work'
  end

  option :arguments do
    short '-a'
    long  '--arguments=*ARGUMENTS'
    desc  'Lis of arguments'
  end

  option :version do
    short '-v'
    long  '--version'
    desc  'Show version'

    action do
      puts App::VERSION
      exit 0
    end
  end
end

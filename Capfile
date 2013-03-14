require 'yaml'
require 'active_support'

APP_CONFIG = YAML.load_file(File.join(Dir.pwd, 'config', 'application.yml'))
APP_CONFIG.symbolize_keys!

require "capistrano/datadog"
set :datadog_api_key, APP_CONFIG[:production]["datadog_api_key"]
load 'deploy'
# Uncomment if you are using Rails' asset pipeline
load 'deploy/assets'
load 'config/deploy' # remove this line to skip loading any of the default tasks


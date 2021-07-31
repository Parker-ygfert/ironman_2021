# frozen_string_literal: true

require 'rubygems'
require 'hirb'
require 'active_record'
Hirb.enable({ width: 155 })
ActiveRecord::Base.logger = Logger.new($stdout)

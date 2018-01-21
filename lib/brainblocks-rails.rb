require "brainblocks-rails/brainblocks_rails_helper"
require "brainblocks-rails/version"

module BrainblocksRails
  class Engine < ::Rails::Engine
    ActionView::Base.send :include, BrainblocksHelper
  end
end

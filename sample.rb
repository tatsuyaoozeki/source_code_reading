require "slack-notify"
require 'clockwork'
require 'active_support/time'
require 'dotenv/load'

module Clockwork
  sample = SlackNotify::Client.new(webhook_url:ENV['key']) #事前準備で取得したWebhook URLを.envで見えないようにする
    every(3.minites, sample) do
      sample.notify('Hello')
    end
end

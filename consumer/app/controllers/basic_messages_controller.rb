# frozen_string_literal: true

# This controller does not have after_received callbacks,
# so it will receive all messages which are sent to basic_messages topic
class BasicMessagesController < Karafka::BaseController
  include Karafka::Controllers::Callbacks
  # Here we set any logic what should be done in sidekiq once controller receives
  # message to 'basic_messages' topic.
  # In this example it logs received params in 'log/basic_controller_params' file
  def consume
    sleep 10

    file = File.open(File.join(Karafka::App.root, 'log', 'basic_controller_params.log'), 'a+')
    file.write "Controller topic details: #{self.topic.to_h}\n"
    file.close

    puts params
  end
end

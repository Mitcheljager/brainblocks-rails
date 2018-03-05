module BrainblocksHelper
  def brainblocks(wallet: "xrb_1xau1obw9u14ung8okbstmh4wmc63iw9y5cq3way3pbkj4krh9j15f4j7dnz", amount: 1000, currency: "rai", on_success: "console.log('Payment successful!', data.token);")
    @brainblocks_id ||= -1

    element = "brainblocks-#{@brainblocks_id += 1}"
    button = tag.div id: element

    script = javascript_tag do
      <<-END.squish.html_safe
      brainblocks.Button.render({
        payment: {
          destination: '#{wallet}',
          currency:    '#{currency}',
          amount:      #{amount}
        }, onPayment: function(data) {
          #{on_success}
        }
      }, '##{element}');
      END
    end

    button + script
  end

  def brainblocks_is_fulfilled?(token)
    uri = URI.parse("https://brainblocks.io/api/session/#{token}/verify")
    response = Net::HTTP.get_response(uri)

    # url = "https://brainblocks.io/api/session/#{token}/verify"
    # data = JSON(open(url).read)

    return true if response[:fulfilled] == true
  end
end

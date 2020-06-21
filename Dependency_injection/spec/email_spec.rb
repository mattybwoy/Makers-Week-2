require 'email'

describe SayHello do
  describe "Send an email" do
    it "allows a new email to be sent" do

      message = double :email
      fakeclient = double :emailclient, message: message
      fakeclient_class = double :client_class, new: fakeclient
      
      sayhello = SayHello.new(fakeclient_class)
      expect(message).to receive(:send)
      sayhello.run
    end
  end
end

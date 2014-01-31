class AccountsController < ApplicationController

  def index
    @directory = Rails.root.join("privatekey.pem");
    @client = Xeroizer::PrivateApplication.new("YFTECYJPUVN6BTEVOF2MIQ3RUSOMWU", "HOE5NA89VTD65LXLWRKRETSRFYNMTH", @directory)

    @accounts = @client.Account.all(:where => 'Type=="BANK"')
    
  end

end

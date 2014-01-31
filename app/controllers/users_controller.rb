class UsersController < ApplicationController

  def index 
    
  @directory = Rails.root.join("privatekey.pem");
  @client = Xeroizer::PrivateApplication.new("YFTECYJPUVN6BTEVOF2MIQ3RUSOMWU", "HOE5NA89VTD65LXLWRKRETSRFYNMTH", @directory)

  @contacts = @client.Contact.all

  end 

end

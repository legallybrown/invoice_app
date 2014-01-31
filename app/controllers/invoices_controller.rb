class InvoicesController < ApplicationController

  def index 
    @directory = Rails.root.join("privatekey.pem");
    @client = Xeroizer::PrivateApplication.new("YFTECYJPUVN6BTEVOF2MIQ3RUSOMWU", "HOE5NA89VTD65LXLWRKRETSRFYNMTH", @directory)

    @invoices = @client.Invoice.all

    @clients = @client.Contact.all(:order => 'Name') 

  end


end 






class StaticPagesController < ApplicationController
  def home
  	require 'nokogiri'
 	require 'open-uri'
  	@rootURL = "http://s3.amazonaws.com/graminorresized/"

	site = Nokogiri::XML(open(@rootURL))
	site = site.remove_namespaces!
	@keys = site.xpath("//Key") #all the keys, use .text for filename
  end

  def help
  end

  def about
  end
  
  def contact
  end
end

module Api
  module V1
    class FooterController < ApplicationController
        def self.date
        year = Time.now.strftime("%Y") == '2019' ? '2019' : "2019 - #{Time.now.strftime('%Y')}"
        render :inline => "Developed by Karpenko #{year}"
      end
    end
  end
end

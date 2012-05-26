load Rails.root + 'app/helpers/caiji_engine/caiji_51job.rb'

module CaijiEngine
  class Base

    # def self.get_page_list(content_name)
    #   return yield
    # end

    # def self.get_page_html(content_name)
    #   return yield
    # end

    def self.method_missing(method_name, *args)
      begin
        return Caiji_51job.new.get_page_list
      rescue
        super(method_name, *args)
      end
    end

  end
end
module CaijiEngine
  class Base

    def self.get_page_list(content_name)
      @c = eval('CaijiEngine::CONFIG[:_' + content_name + '].new')
      return @c.get_page_list
    end

    def self.get_page_html(content_name)
      return yield
    end

  end
end

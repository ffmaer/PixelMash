class Game < ActiveRecord::Base

  has_attached_file :p1, :default_url => "/images/normal/loading.gif"
  has_attached_file :p2, :default_url => "/images/normal/loading.gif"

  def upload_p1(url)
    begin
      io = open(URI.escape(url))
      if io
        def io.original_filename;
          base_uri.path.split('/').last;
        end

        io.original_filename.blank? ? nil : io
        self.p1 = io
      end
      self.save(false)
    rescue Exception => e
      logger.info "EXCEPTION# #{e.message}"
    end
  end


  def upload_p2(url)
    begin
      io = open(URI.escape(url))
      if io
        def io.original_filename;
          base_uri.path.split('/').last;
        end

        io.original_filename.blank? ? nil : io
        self.p2 = io
      end
      self.save(false)
    rescue Exception => e
      logger.info "EXCEPTION# #{e.message}"
    end
  end

end

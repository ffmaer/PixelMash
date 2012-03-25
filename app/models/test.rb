class Test < ActiveRecord::Base

  has_attached_file :avatar, :styles => {:medium => "300x300>", :thumb => "100x100>"}

  def upload_image(url)
    begin
      io = open(URI.escape(url))
      if io
        def io.original_filename;
          base_uri.path.split('/').last;
        end

        io.original_filename.blank? ? nil : io
        self.avatar = io
      end
      self.save(false)
    rescue Exception => e
      logger.info "EXCEPTION# #{e.message}"
    end
  end
end
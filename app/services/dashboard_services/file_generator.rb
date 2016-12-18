#############################################################################################
# File Generator
#############################################################################################

module DashboardServices
  class FileGenerator

    # file generator
    def initialize(file, input_length)
      @file_content = file.read
      @char_per_line = input_length.to_i
      @success = nil
      @errors  = []
    end

    def process!
      if @file_content.present?
        @final_file = @file_content.chars.each_slice(@char_per_line).map(&:join)
        success!
        @error_message = nil
      else
        failure!
        @error_message ||= "Invalid File!!."
      end
      @final_file
    end

    private
    
    def success!
      @success = true
    end

    def failure!
      @success = false
    end
  end
end
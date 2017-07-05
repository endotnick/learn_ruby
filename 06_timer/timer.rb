class Timer
    #write your code here
    attr_accessor :seconds
  
    def initialize
        @seconds = 0
    end
  
    def time_string
        getTime(@seconds)
    end
    
    def getTime(seconds)
        minutes = seconds / 60
        hours = minutes / 60
        minutes = minutes % 60
        seconds = seconds % 60
        
        timeArr = [hours, minutes, seconds]
        
        timeArr.map! { |entry| entry.to_s.length == 1 ? "0#{entry}" : entry }
        
        timeString = "#{timeArr[0]}:#{timeArr[1]}:#{timeArr[2]}"
    end
    
end

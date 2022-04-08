class Member
  attr_reader :name,
              :description,
              :directions,
              :hours
  def initialize(data)
    @name = data[:fullName]
    @description = data[:description]
    @directions = data[:directionsInfo]
    if data[:operatingHours][0].nil?
      @hours = "None Listed"
    else
      @hours = data[:operatingHours][0][:description]
    end
  end
end

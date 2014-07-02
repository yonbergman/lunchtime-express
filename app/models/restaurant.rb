class Restaurant < Hashie::Mash
  def self.all
    @all ||= YAML.load_file('config/restaurant.yml').map{|d| Restaurant.new(d)}
  end

  def icon
    case(type)
      when /italian/ then '5'
      when /vietnamese/ then '.'
      when /vegetarian/ then 'H'
      when /salads/ then '$'
      when /mexican/ then '8'
      when /sandwich/ then 'P'
      when /bistro/ then '3'
      when /sushi/ then 'I'
      when /hummus/ then '?'
      when /cafe/ then 'B'
      when /hamburger/ then 'A'
      when /asian/ then 'D'
      when /breakfast/ then 'N'
      when /indian/ then '6'
      else 'F'
    end
    #
    #general - F
    #corn - H
    #Falafel - ?
    #Fire - #
    #pasta - 5
    #sushi - I
    #rice - D
    #salt - 0
    #wine - Y
    #taco - 8
    #bread - Q
    #burger - A
    #coffee - B
    #cupcake - E
    #spicy - 6
    #lamb - @
    #pizza- L
    #fish - K
    #meat - 3
    #vegtable - $
    #gluten free - 9
    #drumstick - U
    #shish kabab - %
  end

  def color
    case(type)
      when /italian/ then '#cc6a44'
      #when /vietnamese/ then
      when /vegetarian/ then '#d7ac5b'
      when /salads/ then '#98b579'
      when /mexican/ then '#dd9032'
      when /sandwich/ then '#dd9032'
      when /bistro/ then '#cc6a44'
      when /sushi/ then '#86b3bb'
      when /hummus/ then '#c2ae96'
      when /cafe/ then '#957964'
      when /hamburger/ then '#c2ae96'
      when /asian/ then '#aa597a'
      when /breakfast/ then '#d7ac5b'
      when /indian/ then '#98b579'
      else '#adaeba'
    end
  end
end
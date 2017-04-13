class Landmark
    
    # member variables
    attr_accessor :id, :name, :image, :description

  def Landmark.all
    # all the landmarks
    places = [
    	{	
    		"id" => "1",
    		"name" => "Joe and Rika Mansueto Library",
    		"image" => "http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/KJwWW_other_large.jpg",
    		"description" => "The Mansueto Library can hold the equivalent of 3.5 million volumes through its automated storage and retrieval system. Mansueto's design reflects Regenstein Library next door, as well as Mitchell Tower beyond. Though Mansueto's glass dome structure creates a sense of permeability between the indoors and the outdoors, it is closely temperature controlled, staying cool in the hot summers and warm in the cold winters."
    	},
    	{
    		"id" => "2",
    		"name" => "International House",
    		"image" => "http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/IHOUSE_large.jpg",
    		"description" => "John D. Rockefeller Jr. established International House as a residence for international students.
        International House has recently completed a multi-year, $30 million restoration which has modernized resident and guest accommodations as well as updated meeting, conference and public event spaces will serve future generations of students, scholars and the community."
    	},
    	{
    		"id" => "3",
    		"name" => "Gerald Ratner Athletics Center",
    		"image" => "http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/RATNER_large.jpg",
    		"description" => "John D. Rockefeller Jr. established International House as a residence for international students.
        The Gerald Ratner Athletics Center's exterior is often described as a ship-like structure."
    	}
    ]

    # returning all the landmarks
    places.map do |l|
        landmark = Landmark.new
        landmark.id = l["id"]
        landmark.name = l["name"]
        landmark.description = l["description"]
        landmark.image = l["image"]
        landmark
    end


  end


  def Landmark.find_by(id)
    # find the landmark by id
    Landmark.all.detect{ |landmark| landmark.id == id}
  end


end


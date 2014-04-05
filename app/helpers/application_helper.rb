module ApplicationHelper
	
# MAKE SURE YOU CHANGE ALL OF THIS


	  def site_name
    # Change the value below between the quotes.
    "Project Name"
  end

  def site_url
    if Rails.env.production?
      # Place your production URL in the quotes below
      "http://http://www.example.com/"
    else
      # Our dev & test URL
      "http://localhost:3000"
    end
  end

  def meta_author
    # Change the value below between the quotes.
    "Website Author"
  end

  def meta_description
    # Change the value below between the quotes.
    "Add your website description here"
  end

  def meta_keywords
    # Change the value below between the quotes.
    "Add your keywords here"
  end

  # Returns the full title on a per-page basis.
  # No need to change any of this we set page_title and site_name elsewhere.
  def full_title(page_title)
    if page_title.empty?
      site_name
    else
      "#{page_title} | #{site_name}"
    end
  end

  def copyright_notice_year_range(start_year)
    # if the input is not a number it will return 0
    start_year = start_year.to_i
    #get the current year from system
    current_year = Time.new.year

     #it will check the the current year and if is the same it will only display 
     #the current year, but if is not it will display both years
    if current_year > start_year && start_year > 2000
      "#{start_year} - #{current_year}"
      elsif  start_year > 2000
        "#{start_year}"
      else
        "#{current_year}"
          
  end
 end
end

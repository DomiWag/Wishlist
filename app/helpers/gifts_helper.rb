module GiftsHelper
  SHORT_DESCRIPTION_LENGTH = 80
  NO_DESCRIPTION_STRING = 'There is no description for this gift, so be creative!'

  def shorten(description)
    if description then
      if description.length > SHORT_DESCRIPTION_LENGTH then
        description.first(SHORT_DESCRIPTION_LENGTH) + '...'
      else
        description
      end
    else
      NO_DESCRIPTION_STRING
    end
  end
end

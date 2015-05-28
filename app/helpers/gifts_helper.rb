module GiftsHelper
  SHORT_DESCRIPTION_LENGTH = 80

  def shorten(description)
    if description.length > SHORT_DESCRIPTION_LENGTH then
      description.first(SHORT_DESCRIPTION_LENGTH) + '...'
    else
      description
    end
  end
end

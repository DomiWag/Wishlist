module TagsHelper
  def tag_link(tag)
    link_to tag do
      raw "<span class='glyphicon glyphicon-tag'></span>&nbsp;#{tag.name}"
    end
  end

  def tag_links(tags)
    tags.map{|tag| tag_link tag}.join(', ')
  end
end

module ApplicationHelper

  def generate_link_tag(body, path)
    ## path is either a string or an instance of one of my models
    if path.is_a?(String) # if it's a string
      "<a href='#{path}'>#{body}</a>".html_safe # just put it into an a tag
    else
      # if it's an instance of a model
      resource_name = path.class.to_s.downcase.pluralize
      "<a href='/#{resource_name}/#{path.id}'>#{body}</a>".html_safe
    end
  end

  def my_form_tag(path)
    form = <<-HEREDOC
    <form method='POST' action="#{path}" >
      <input type='hidden' value='1234' name='_authenticity_token' />
      #{ yield }
    </form>
    HEREDOC
    form.html_safe
  end

  # def dogs
  #   name = yield
  #   puts "Woof! My name is #{name}"
  # end

end

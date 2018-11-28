module ApplicationHelper
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end

def errors_for(object)
    if object.errors.any?
        content_tag(:div, class: "panel panel-danger") do
            concat(content_tag(:div, class: "panel-heading") do
                concat(content_tag(:h4, class: "panel-title") do
                    concat "#{pluralize(object.errors.count, "error")} prohibited this #{object.class.name.downcase} from being saved:"
                end)
            end)
            concat(content_tag(:div, class: "panel-body") do
                concat(content_tag(:ul) do
                    object.errors.full_messages.each do |msg|
                        concat content_tag(:li, msg)
                    end
                end)
            end)
        end
    end
end


def format_date  date_object
  return date_object.strftime("%d-%m-%Y") unless date_object.nil?
end


def sporters_by_age data
    bar_chart data, height: '500px', library: {
        title: {text: 'Sporters by age', x: -20},
        yAxis: {
            allowDecimals: false,
            title: {
                text: 'Ages count'
            }
        },
        xAxis: {
            title: {
                text: 'Age'
            }
        }
    }
  end

  def results_by_country data
    puts data
    column_chart data, stacked: false, height: '500px', library: {
        title: {text: 'Results by Constituency', x: -20},
        yAxis: {
            title: {
                text: 'Percentage'
             }
        },
        xAxis: {
            title: {
                text: 'Villages'
            }
        }
    }
  end

end

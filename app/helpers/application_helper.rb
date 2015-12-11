module ApplicationHelper

  def block_header (link, i18n_phrase)
    content_tag(:div, :class => 'page-header') do
      content_tag(:h2, :id => link) do
        t i18n_phrase
      end
    end
  end

  def locale_selector
    $loc = I18n.locale
    case $loc
      when $loc = :de
        content_tag(:li) do
          content_tag(:a, :href => 'en' ) do
            image_tag('flags/en.png')
          end
        end
      when $loc = :en
        content_tag(:li) do
          content_tag(:a, :href => 'de' ) do
            image_tag('flags/de.png')
          end
        end
    end
  end

  def accordion_header (id, title_I18n, icon_class)
    content_tag(:a, :class => 'accordion-header', :role => 'button',
                'data-toggle' => 'collapse', 'data-parent' => '#accordion',
                :href => '#' + id, 'aria-expanded' => true, 'aria-controls' => id) do
      content_tag(:div, :class => 'panel-heading', :role => 'tab') do
        content_tag(:h4,  :class => 'panel-title') do
          "<i class='#{icon_class}'></i> ".html_safe + t(title_I18n) + "<div class='pull-right'><span class='caret'></span></div>".html_safe
        end
      end
    end
  end

  def table_row (t_header, t_content)
    content_tag(:tr) do
      content_tag(:th, "#{t t_header}", 'scope' => 'row') + content_tag(:td, "#{t_content}")
    end
  end

  def get_start_date date
    Date.parse date
  end

  def get_date_diff (first, second)
    second_date = Date.new(second)
    first_date = Date.new(first)
    second_date - first_date
  end


end


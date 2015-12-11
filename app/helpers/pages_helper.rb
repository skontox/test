module PagesHelper

  def parse_cal (ics_cal_url)
    # Open a file or pass a string to the parser
    cal_file = open(ics_cal_url)

    # Parser returns an array of calendars because a single file
    # can have multiple calendars.
    cals = Icalendar.parse(cal_file)
    cal = cals.first

    # Returns array of events
        Array(cal.events)
  end

  def show_events (ics_cal_url)
    events = parse_cal (ics_cal_url)
    "#{events.first.dtstart}".html_safe

    content_tag (:ul) do

      events.each do |e|


      end
    end
  end


end

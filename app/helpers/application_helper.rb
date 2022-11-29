module ApplicationHelper
  def flash_class(level)
    bootstrap_alert_class = {
      "success" => "alert-success",
      "error" => "alert-danger",
      "notice" => "alert-info",
      "alert" => "alert-danger",
      "warn" => "alert-warning"
    }
    bootstrap_alert_class[level]
  end

  def humanize_admision(value)
    case value
    when true
      "Discharged"
    when false
      "Admitted"
    when nil
      "Undefined"
    else
      "Invalid"
    end
  end

  def humanize_appointment(value)
    case value
    when true
      "Attended"
    when false
      "Pending"
    when nil
      "Undefined"
    else
      "Invalid"
    end
  end

  def humanize_availability(value)
    case value
    when true
      "Occupied"
    when false
      "Available"
    when nil
      "Undefined"
    else
      "Invalid"
    end
  end
end

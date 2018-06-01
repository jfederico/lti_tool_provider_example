module ApplicationHelper

  CAP_TO_DESCRIPTIONS = {
    'accountNavigation' => 'Account Navigation',
    'courseNavigation' => 'Course Navigation',
    'assignmentSelection' => 'Assignment Selection',
    'linkSelection' => 'Link Selection'
  }

  def display_cap(cap)
    if CAP_TO_DESCRIPTIONS.keys.include? cap
      CAP_TO_DESCRIPTIONS[cap]
    else
      cap
    end
  end

  def lti_application_permitted
    raise "app parameter not included" unless params.has_key?(:app)
    lti_apps = ENV["LTI_APPS"] || ''
    permitted_apps = lti_apps.split(/\s*,\s*/) || []
    raise "app not allowed" unless params[:app] == 'default' || permitted_apps.include?(params[:app])
  end

end

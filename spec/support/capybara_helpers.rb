module CapybaraHelpers
  def submit_form(form_id = nil)
    form = form_id ? page.find(form_id) : page
    form.find("input[type=submit]").click
  end
end
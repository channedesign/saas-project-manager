module ApplicationHelper

	def bootstrap_class_for flash_type
    case flash_type
      when "success"
        "alert-success"
      when "error"
        "alert-danger"
      when "alert"
        "alert-warning"
      when "notice"
        "alert-success"
      else
        flash_type.to_s
    end
  end

  def tenant_name(tenant_id)
    Tenant.find(tenant_id).name
  end 

end

module BlogsHelper
  def admin?
    cookies[:admin]
  end
end

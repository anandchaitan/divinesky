class EmployeesController < InheritedResources::Base

  def update
    update!(:notice => "Great! Employee has updated successfully.") { employees_url }
  end

  def create
    create!(:notice => "Great! Employee has created successfully.") { employees_url }
  end

  private

    def employee_params
      params.require(:employee).permit(:full_name, :email, :department_id, :role_id, :password)
    end

end

//
//  EmployeesView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 28.12.2022.
//

import SwiftUI

struct EmployeesView: View {
    @State var employees: [Employee] = Employee.employees
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach(employees) { employee in
                        EmployeeView(employee: employee)
                    }
                }
            }
        }
    }
}

struct EmployeesView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeesView()
    }
}

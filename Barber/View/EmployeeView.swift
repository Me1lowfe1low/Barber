//
//  EmployeeView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 27.12.2022.
//

import SwiftUI

struct EmployeeView: View {
    var employee: Employee
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [.green,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                .padding(.horizontal)
            HStack(alignment: .center) {
                Image(systemName: employee.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                Divider()
                VStack(alignment: .leading) {
                    Text("\(employee.firstName)")
                    Text("\(employee.secondName)")
                    Text("\(employee.lastName)")
                    Divider()
                    //.frame(maxWidth: .infinity)
                    Text("\(employee.position.rawValue)")
                        .font(.subheadline)
                }
                .font(.title.bold())
            }
            .padding()
            .blendMode(.destinationOut)
            //.overlay(RoundedRectangle(cornerRadius: 20).fill(.gray).opacity(0.9))
            .frame(maxWidth: .infinity)
        }
    }
}

struct EmployeeView_Previews: PreviewProvider {
    static var previews: some View {
        //EmployeeView(employee: Employee.employee)
        EmployeesView()
    }
}

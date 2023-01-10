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
        GeometryReader { geometry in
            let size: CGFloat = min (geometry.size.width,geometry.size.height)*0.6
            ZStack {
                RoundedRectangle(cornerRadius: 20).fill(LinearGradient(colors: [.green,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .padding(.horizontal)
                HStack(alignment: .center) {
                    Image(systemName: employee.profileImage)
                        .resizable()
                        .interpolation(.none)
                        .aspectRatio(1.0, contentMode: .fit)
                        .frame(width: size, height: size)
                        .clipShape(Circle())
                        .overlay(Circle()
                            .stroke(Color.black, lineWidth: 2))
                        .padding()
                        .shadow(radius: 10)
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
                    //.frame(width: geometry.size.width, height: geometry.size.height)
                }
                //.frame(width: .infinity, height: geometry.size.height)
                .padding()
                .blendMode(.destinationOut)
            }
            //.frame(minHeight: geometry.size.height)
        }
        .frame(minHeight: 200)
    }
}

struct EmployeeView_Previews: PreviewProvider {
    static var previews: some View {
        //EmployeeView(employee: Employee.employee)
        EmployeesView()
    }
}

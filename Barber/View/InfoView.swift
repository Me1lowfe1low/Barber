//
//  InfoView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 28.12.2022.
//

import SwiftUI
import MapKit

struct InfoView: View {
    @State var office: Info = Info.officeSample
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: Info.officeSample.latitude, longitude: Info.officeSample.longitude),span: MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015))
    @State private var locations: [Info] = [Info.officeSample]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Map(coordinateRegion: $region, annotationItems: locations) { location in
                MapMarker(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude), tint: .red)
            }
            .mask(Circle())
            .padding()
            List {
                Section(header: Text("Office")) {
                    Text("Place: " + office.officeName)
                    Text("Business hours: " + office.officeHours)
                }
                Section(header: Text("Description")) {
                    Text(office.descritption)
                }
                Section(header: Text("Contact info")) {
                    Text(office.contacts)
                }
            }
        
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

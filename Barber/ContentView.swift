//
//  ContentView.swift
//  Barber
//
//  Created by Дмитрий Гордиенко on 24.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var newsPageIndex = 0
    @State private var news: [NewsModel] = NewsModel.bunchOfNews
    @State var logginStatus: Bool = false
    
    var body: some View {
        VStack {
            TabView(selection: $newsPageIndex) {
                ForEach(news) { news in
                    VStack {
                        NewsView(news: news)
                    }
                    .tag(news.tag)
                }
            }
            .animation(.easeOut, value: newsPageIndex)
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            Divider()
            HStack {
                NavigationLink(destination: CalendarWrapperView())
                {
                    CellView(value:  "calendar")
                }
                NavigationLink(destination: Text("Shop"))
                {
                    CellView(value: "takeoutbag.and.cup.and.straw")
                }
            }
            
            HStack {
                NavigationLink(destination: EmployeesView())
                {
                    CellView(value: "person.3")
                }
                NavigationLink(destination: InfoView())
                {
                    CellView(value: "info.square")
                }
            }
        }
        .padding()
        .toolbar {
            Menu(content: {
                Button(action: {Text("Account")}, label: {Image(systemName: "person.crop.circle")})
                
            }, label: {
                Image(systemName: "list.bullet")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

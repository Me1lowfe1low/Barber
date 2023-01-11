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
    @State var client: Client? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                //CalendarWrapperView()
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
                Grid {
                    GridRow {
                        NavigationLink(destination: CalendarWrapperView())
                        {
                            CellView(value:  "calendar")
                        }
                        NavigationLink(destination: ShopView())
                        {
                            CellView(value: "takeoutbag.and.cup.and.straw")
                        }
                    }
                    GridRow {
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
            }
            .padding()
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    //Menu( content: {
                    NavigationLink(
                        destination: Text("Hello"),
                        //ClientAccountView(client: client),
                        label: {
                            Image(systemName: "person.crop.circle")
                        })
                }
                //}, label: {
                //    Image(systemName: "list.bullet")
                //})
                // }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //NavigationView {
            ContentView()
        //}
    }
}

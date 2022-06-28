//
//  ContentView.swift
//  FullertonEats
//
//  Created by Eric Chu on 6/8/22.
//  Edit by Jiu Lin on 6/26/22

import SwiftUI

struct ContentView: View {
    @State var searchString: String = ""
    @StateObject var finder = FoodFinder()

    var body: some View {
        VStack(alignment: .leading) {
            TextField("Find Food Location ", text: $searchString)
                .modifier(TextEntry())

            Button(action: {
                finder.find(searchString)
            }) {
                Label("Search", systemImage: "magnifyingglass.circle.fill")
            }
            .modifier(myButtonDesign())
            .padding(.bottom, 20)

            Label("Search result", systemImage: "takeoutbag.and.cup.and.straw.fill")
                .imageScale(.small)
                .font(.largeTitle)
                .foregroundColor(Color.orange)
                .frame(maxWidth: .infinity, alignment: .center)

            /* Image(uiImage: finder.image)
                 .frame(maxWidth: .infinity, alignment: .center)

             Text(finder.firstFoundName) //ForEach(finder.arr) { }
                 .font(.body)
                 .foregroundColor(Color.blue)
                 .frame(maxWidth: .infinity, alignment: .center)
             */

            /*
                 List {
                     ForEach(finder.arr) // FoodLocation should be identifierable
                         {
                             feature in
                             VStack(alignment: .leading) {
                                 Text(feature.place_name)
                                     .font(.largeTitle)
                                     .foregroundColor(Color.blue)
                             }
                         }
                 }
             */
            List{
                VStack(alignment: .leading) {
                    Text(finder.firstFoundName)
                        .modifier(ListDesign())
                    Text(finder.firstFoundName0)
                        .modifier(ListDesign())
                    Text(finder.firstFoundName1)
                        .modifier(ListDesign())
                    Text(finder.firstFoundName2)
                        .modifier(ListDesign())
                    Text(finder.firstFoundName3)
                        .modifier(ListDesign())
                    Text(finder.firstFoundName4)
                        .modifier(ListDesign())
                }
            }

            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

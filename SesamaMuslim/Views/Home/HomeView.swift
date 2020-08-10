//
//  HomeView.swift
//  SesamaMuslim
//
//  Created by Wanhar on 07/08/20.
//

import SwiftUI
import URLImage

struct HomeView: View {
    
    let schools = School.all()
    
    var body: some View {
        return NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                ForEach(self.schools, id: \.id){ item in
                    SchoolCell(item: item)
                }
            })
            .navigationTitle("Sekolah")
        }
    }
}

struct SchoolCell: View {
    
    let item: School
    
    var body: some View {
        VStack {
            URLImage(URL(string: item.imageURL)!, placeholder: { _ in
                Indicator()
                    .frame(width: 50, height: 50)
            }) { proxy in
                proxy.image
                    .resizable()
                    .renderingMode(.original)
                    .cornerRadius(10)
                    .shadow(radius: 8)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 220)
            }
            VStack(alignment: .leading, spacing: 3) {
                HStack {
                    Text(item.name)
                        .foregroundColor(.primary)
                        .font(.headline)
                    Spacer()
                }
                Text(item.name)
                    .font(.subheadline)
                    .foregroundColor(.secondary).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            }.frame(width: UIScreen.main.bounds.width - 30)
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

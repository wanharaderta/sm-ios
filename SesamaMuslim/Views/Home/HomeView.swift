//
//  HomeView.swift
//  SesamaMuslim
//
//  Created by Wanhar on 07/08/20.
//

import SwiftUI
import URLImage

struct HomeView: View {
    
    @State var searchTemp = ""
    let schools = School.all()
    
    var body: some View {
        return NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                ZStack {
                    HStack{
                        TextField("Cari tempat belajar", text: self.$searchTemp, onEditingChanged: {_ in } ){
                            //action
                        }
                        if self.searchTemp != "" {
                            Image(systemName: "xmark.circle.fill")
                                .imageScale(.medium)
                                .foregroundColor(Color(.systemGray3))
                                .padding(2)
                                .onTapGesture {
                                    withAnimation {
                                        self.searchTemp = ""
                                    }
                                }
                        }
                    }.padding(15)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.vertical, 10)
                }.padding([.leading,.trailing], 12)
                
                VStack {
                    ForEach(self.schools, id: \.id){ item in
                        SchoolCell(item: item)
                    }
                }
            })
            
            .navigationTitle("Sekolah")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  DetailView.swift
//  SesamaMuslim
//
//  Created by Wanhar on 07/08/20.
//

import SwiftUI

struct DetailView: View {
    
    let item: School
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: School(id: 0, name: "", imageURL: "", desc: ""))
    }
}

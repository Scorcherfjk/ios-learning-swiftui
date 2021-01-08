//
//  CoursesScrollView.swift
//  Learning SwiftUI
//
//  Created by Francisco De Freitas on 7/01/21.
//

import SwiftUI

struct CoursesScrollView: View {
    var body: some View {
        ScrollView {
            HeaderView()
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    CardView()
                        .frame(width: 300)
                    CardView()
                        .frame(width: 300)
                    CardView()
                        .frame(width: 300)
                    CardView()
                        .frame(width: 300)
                    CardView()
                        .frame(width: 300)
                }
            }
            
            VStack{
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
            }
        }
    }
}

struct CoursesScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesScrollView()
    }
}

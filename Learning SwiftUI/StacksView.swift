//
//  StacksView.swift
//  Learning SwiftUI
//
//  Created by Francisco De Freitas on 5/01/21.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView()
            
            HStack(spacing: 8) {
                Spacer()
                PriceView(title: "Básico", subtitle: "Un curso incluido", detail: nil, price: "9.99$")
                Spacer()
                PriceView(title: "Carrera", subtitle: "Toda una carrera", detail: "La mejor para empezar", price: "29.99$", fColor: .black, bgColor: Color(red: 230/255, green: 230/255, blue: 230/255))
                Spacer()
            }
            
            PriceView(title: "Definitivo", subtitle: "Todos los cursos Online", detail: "Conviertete en un master del universo", price: "99.99$", fColor: .white, bgColor: Color(red: 50/255, green: 50/255, blue: 50/255), icon: "scribble")
                .padding()
            Spacer()
            
        }
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StacksView()
        }
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Elige tu itinerario")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("de aprendizaje")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)

            }
            Spacer()
        }.padding()
    }
}

struct PriceView: View {
    
    var title: String = "Some title"
    var subtitle: String = "Some subtitle"
    var detail: String?
    var price: String = "9.99$"
    var fColor: Color = .white
    var bgColor: Color = .green
    var icon: String?
    
    var body: some View {
        ZStack {
            VStack(spacing: 5){
                
                if icon != nil {
                    Image(systemName: icon!)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(fColor)
                }
                
                Text(title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(fColor)
                
                Text(price)
                    .font(.system(size: 34, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundColor(fColor)
                
                Text(subtitle)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(fColor)
                
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 150)
            .padding()
            .background(bgColor)
            .cornerRadius(10)
            
            /// condicional en caso detail no sea nil
            if detail != nil {
                Text(detail!)
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(Color(red: 240/255, green: 180/255, blue: 50/255))
                    .offset(CGSize(width: 0.0, height: -90.0))
                
            }
            
        }
    }
}

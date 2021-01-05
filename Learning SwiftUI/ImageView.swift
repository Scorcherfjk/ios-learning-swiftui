//
//  ImageView.swift
//  Learning SwiftUI
//
//  Created by Francisco De Freitas on 4/01/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
/// Incluyendo una imagen de los SF Symbols
//        Image(systemName: "recordingtape")
//            .font(.system(size: 80))
//            .foregroundColor(.red)
//            .shadow(color: .black, radius: 10, x: 0.0, y: 10.0)
        
/// Incluyendo una imagen de los xcassets
        Image("vancouver")
            .resizable()
            .edgesIgnoringSafeArea(.bottom) // ignora los safearea que se le indiquen
//            .scaledToFill() // escalar la foto para ocupar el maximo tamano disponible sin deformarse
//            .scaledToFit() // escalar la foto para ocupar el minimo tamano disponible sin deformarse
            .aspectRatio(contentMode: .fill) // Lo mismo que las anteriores en una
            .frame(width: 300) // delimitar el tamano de presentacion y alinearla
//            .clipped() // corta los sobrantes de la foto que se desbordan con .fill
            .clipShape(Capsule()) // cortar pero con una forma
            .opacity(0.9)
            .overlay( // coloca una overlay, algo por encima del elemento, y dependiendo del tamano se puede alinear
                
//                Image(systemName: "heart.fill")
//                    .foregroundColor(.pink)
//                    .font(.system(size: 80))
//                    .opacity(0.5)
                
//                Text("Vancouver is ranked among the best cities to live in. It’s obvious, who doesn’t like mountains, beaches and a beautiful skyline?")
//                    .foregroundColor(.white)
//                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                    .font(.system(.headline, design: .rounded))
//                    .multilineTextAlignment(.center)
//                    .padding()
//                    .background(Color.gray)
//                    .cornerRadius(10)
//                    .opacity(0.8)
//                    .padding()
                    
                Capsule()
                    .foregroundColor(.gray)
                    .opacity(0.7)
                    .overlay(
                        Text("Vancouver")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    )
                
                ,alignment: .center
            )
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

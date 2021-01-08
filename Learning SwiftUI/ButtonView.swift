//
//  ButtonView.swift
//  Learning SwiftUI
//
//  Created by Francisco De Freitas on 8/01/21.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {

            /// De esta manera lo personalizamos con bordes cuadrados
            Button(action: {
                /// Accion del boton
            } ) {
                Text("Pulsame")
                    .font(.title)
                    .fontWeight(.bold)
                    
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    
                    .padding(12)
                    .border(Color.blue, width: 6)
            }
            
            /// De esta manera lo personalizamos con bordes redondeados
            Button(action: {
                /// Accion del boton
            } ) {
                Text("Presioname")
                    .font(.title)
                    .fontWeight(.bold)
                    
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    
                    .padding(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.blue, lineWidth: 6)
                    )
            }
            
            /// De esta manera lo personalizamos combinando texto e imagenes
            Button(action: {
                /// Accion del boton
            } ) {
                
                Image(systemName: "paperplane")
                Text("Tocame")
                    .fontWeight(.bold)
                    
            }
            .font(.title)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
            

            /// De esta manera lo personalizamos  combinando texto e imagenes en un stack
            Button(action: {
                /// Accion del boton
            } ) {
                
                HStack{
                    Image(systemName: "book")
                    Text("Clickeame")
                        .fontWeight(.bold)
                }
                .font(.title)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(50)

            }

            

            /// De esta manera lo personalizamos con gradientes
            Button(action: {
                /// Accion del boton
            } ) {
                
                HStack{
                    Image(systemName: "paperclip")
                    Text("Pinchame")
                        .fontWeight(.bold)
                }
                .font(.title)
                .padding()
                .foregroundColor(.white)
                /// Lineal
                .background(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
                /// Radial
                //.background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 200))
                /// Angular
                //.background(AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center))
                    
            }
            

            /// De esta manera lo personalizamos con sombras
            Button(action: {
                /// Accion del boton
            } ) {
                
                HStack{
                    Image(systemName: "link")
                    Text("Hazme tap")
                        .fontWeight(.bold)
                        
                }
                .font(.title)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .shadow(color: .red, radius: 5, x: 5.0, y: 5.0)
                    
            }
            
            /// De esta manera lo personalizamos con sombras
            Button(action: {
                /// Accion del boton
            } ) {

                Text("Marica yaaa")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.blue)
                    .padding(.horizontal)
                    
            }
            
            /// De esta manera lo personalizamos con estilos reutilizables
            Button(action: {
                /// Accion del boton
            } ) {

                Text("Pues aun hay más")
                    .fontWeight(.bold)
                    
            }.buttonStyle(BasicButtonStyle())
        
            
        }
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}


struct BasicButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .scaleEffect(configuration.isPressed ? 0.99 : 1.0)
    }
}

//
//  ContentView.swift
//  Environmental Justice May
//
//  Created by Sasha on 5/25/21.
//

import SwiftUI

struct ContentView: View {
   
    @State var flipped = false
   
    let mapView = MapView()
    let usCases = USCases()
    @State var showSignInForm = false
    
    
    var body: some View {
        HStack {
            NavigationView {
                VStack(alignment: .center) {
                    ZStack {
                        VStack {
                            ZStack {
        
        Image("spainEnv")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .frame(width: 600, height: 1100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(5)
            .shadow(color: .black, radius: 4)
            .opacity(0.6)
        
            .overlay(
                Group {
                    Spacer()
                
                ejTitle()
      
           
            if !self.flipped {
           Spacer(minLength: 10)
            
            
            Text("Info")
                .kerning(2.0)
                .fontWeight(.light)
                .padding()
                .font(.system(.headline))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .scaleEffect(0.9)
                .background(Color.white)
                .cornerRadius(15)
                .opacity(0.7)
                .padding(.horizontal, 30.0)
                .minimumScaleFactor(0.5)
                .frame(width: UIScreen.main.bounds.width-20, alignment: .center)
                
     
          
            }
        else {
            
            Text(ejDef)
                .fontWeight(.light)
                .padding()
                .font(.system(.headline))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .scaleEffect(0.9)
                .background(Color.white)
                .cornerRadius(15)
                .opacity(0.7)
                .padding(.horizontal, 30.0)
                .minimumScaleFactor(0.5)
                .frame(width: UIScreen.main.bounds.width-20, alignment: .center)
            
    }
                    
            NavigationLink(destination: usCases) {
                
                Text("U.S. Cases")
                    .kerning(2.0)
                    .fontWeight(.light)
                    .padding()
                    .font(.system(.headline))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .scaleEffect(0.9)
                    .background(Color.white)
                    .cornerRadius(15)
                    .opacity(0.7)
                    .padding(.horizontal, 30.0)
                    .minimumScaleFactor(0.5)
                    .frame(width: UIScreen.main.bounds.width-20, alignment: .center)
                    }
                    
                  
            NavigationLink(destination: mapView) {
                Text("Map View")
                    .kerning(2.0)
                    .fontWeight(.light)
                    .padding()
                    .font(.system(.headline))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .scaleEffect(0.9)
                    .background(Color.white)
                    .cornerRadius(15)
                    .opacity(0.7)
                    .padding(.horizontal, 30.0)
                    .minimumScaleFactor(0.5)
                    .frame(width: UIScreen.main.bounds.width-20, alignment: .center)
                    }
                    
                    Button(action: { self.showSignInForm.toggle() }) {
                        Image(systemName: "person.circle")
                            .foregroundColor(.black)
                            .opacity(0.4)
                    }
                 
          Spacer()
                    
                    
                    
                    
          Spacer()
    }
                .rotation3DEffect(self.flipped ? Angle(degrees: 0): Angle(degrees: 0), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
                .animation(.default) // implicitly applying animation
                .onTapGesture {
                // explicitly apply animation on toggle (choose either or)
                //withAnimation {
                self.flipped.toggle()
                //}
                
                }
                ,
           alignment: .center
) }
}
}
                    .sheet(isPresented: $showSignInForm) {
                        SignInView()
                    }
                    
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

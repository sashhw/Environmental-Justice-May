//
//  ejTitle.swift
//  Environmental Justice May
//
//  Created by Sasha on 5/25/21.
//

import SwiftUI

struct ejTitle: View {
    
    
    var body: some View {
        Text("Environmental Justice")
            .fontWeight(.light)
            .padding()
            .font(.system(.title))
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            .scaleEffect(0.9)
            .background(Color.white)
            .cornerRadius(15)
            .opacity(0.7)
            .padding(.top, -140.0)
            .minimumScaleFactor(0.5)
            .frame(width: UIScreen.main.bounds.width-20, alignment: .center)
    }
}

struct ejTitle_Previews: PreviewProvider {
    static var previews: some View {
        ejTitle()
    }
}

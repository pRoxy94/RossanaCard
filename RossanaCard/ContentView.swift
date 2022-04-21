//
//  ContentView.swift
//  RossanaCard
//
//  Created by Rossana Laricchia on 04/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
	   ZStack {
		  Color(red: 0.41, green: 0.43, blue: 0.88)
			 .edgesIgnoringSafeArea(.all)
		  VStack {
			 Image("rossana")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 150, height: 150)
				.clipShape(Circle())
				.overlay(
				    Circle().stroke(Color.white, lineWidth: 5)
				)
			 
			 Text("Rossana Laricchia")
				.font(Font.custom("Pacifico-Regular", size: 30))
				.bold()
				.foregroundColor(.white)
			 .padding()
			 
			 Text("iOS Developer")
				.foregroundColor(.white)
				.font(.system(size: 25))
			 
			 Divider()
			 
			 InfoView(text: "+39 3928649205", imageName: "phone.fill")
			 InfoView(text: "rossana.laricchia@gmail.com", imageName: "envelope.fill")
		  }
	   }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

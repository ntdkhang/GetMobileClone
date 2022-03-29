//
//  HomeView.swift
//  GetMobileClone
//
//  Created by Nguyen Tran Duy Khang on 3/28/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
		VStack {
			CardView(name: "Khang D Nguyen Tran")
			
			VStack {
				NavigationLink(destination: Text("Fuck off")) {
					HStack {
						Image(systemName: "dollarsign.circle")
							.font(.system(size: 25))
					}
				}
			}
		}
    }
}
 
struct CardView: View {
	let name: String
	var body: some View {
		Image(uiImage: UIImage(named: "avatar_empty")!)
			.resizable()
			.scaledToFit()
			.overlay {
				ZStack {
					VStack {
							
						Image(uiImage: UIImage(named: "face1")!)
							.resizable()
							.frame(width: imageSize, height: imageSize)
							.clipShape(Circle())
							.overlay(Circle().stroke(lineWidth: 2).foregroundColor(.white))
						Spacer()
							.frame(height: 15)
					}
					
					HStack {
						VStack {
							Spacer()
							Spacer()
							Spacer()
							Text(name)
								.font(.system(size: 20, weight: .medium, design: .rounded))
								.foregroundColor(.white)
								.padding(.bottom, 8)
							Spacer()
						}
						.padding(.leading, 20)
						Spacer()
					}
				}
			}
	}
	var imageSize: CGFloat = 110
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

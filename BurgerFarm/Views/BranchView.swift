//
//  BranchView.swift
//  BurgerFarm
//
//  Created by Ram on 31.08.26.
//

import SwiftUI

struct BranchView: View {
    private let phoneURL = URL(string: "tel://+994518431716")!
    private let whatsappURL = URL(string: "https://api.whatsapp.com/send/?phone=994518431716&text&type=phone_number&app_absent=0")!
    private let instagramURL = URL(string: "https://www.instagram.com/burgerfarm.az/?utm_source=ig_web_button_share_sheet")!
    private let mapURL = URL(string: "http://maps.apple.com/?address=87b,Bakixanov,Kucesi,Baku")!

    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("Burger Farm")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .italic()
            }
            .foregroundColor(.black)
            
            VStack(alignment: .leading, spacing: 12) {
                Link(destination: mapURL) {
                    HStack(spacing: 12) {
                        Image(systemName: "mappin.circle.fill")
                            .font(.title2)
                            .foregroundColor(.black)
                        Text("87b Bakıxanov Küçəsi")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .font(.subheadline)
                            .foregroundColor(.black.opacity(0.6))
                    }
                }
                
                Divider()
                    .background(Color.black.opacity(0.2))
                
                HStack(spacing: 12) {
                    Image(systemName: "clock.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                    Text("Open Daily / 11:00 till SOLD OUT")
                        .font(.subheadline)
                        .foregroundColor(.black.opacity(0.7))
                }
            }
            .padding(16)
            .background(Color.white.opacity(0.8))
            .cornerRadius(12)
            
            HStack(spacing: 12) {
                Button(action: {
                    UIApplication.shared.open(phoneURL)
                }) {
                    HStack {
                        Image(systemName: "phone.fill")
                        Text("Call")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
                
                Button(action: {
                    UIApplication.shared.open(whatsappURL)
                }) {
                    HStack {
                        Image(systemName: "message.fill")
                        Text("WhatsApp")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
                
                Button(action: {
                    UIApplication.shared.open(instagramURL)
                }) {
                    HStack {
                        Image(systemName: "link.circle")
                        Text("Instagram")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
            }
        }
        .padding(20)
        .background(Color(red: 1.0, green: 0.83, blue: 0.0))
        .cornerRadius(20)
        .padding(.horizontal)
    }
}

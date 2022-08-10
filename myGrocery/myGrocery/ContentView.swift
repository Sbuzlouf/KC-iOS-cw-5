//
//  ContentView.swift
//  myGrocery
//
//  Created by Sumaya Buzlouf on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var grocery = ["جرح القلب يطيبه شاني", "دوا بطن", "ريدبول يعطيك جوانح", "تقليد سفن", "شي ما ينشرب"]
    
    @State var newItem = ""
    
    var body: some View {
        
        VStack{
            List(grocery, id:\.self){ drink in
            
                HStack{
                    Image(drink)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                
                    Spacer()
                
                    Text(drink)
                }
            }
            HStack{
               
                Button{
                    grocery.append(newItem)
                } label: {
                    Image(systemName: "plus")
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(15)
                        .padding()
                }
                
                TextField("New Item", text: $newItem)
                    .padding()
                    .font(.system(size: 20))
                
                Button{
                    grocery.remove(at: 0)
                } label: {
                    Image(systemName: "minus")
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(15)
                        .padding()
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

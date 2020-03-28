//
//  ContentView.swift
//  CustomNavigationBarAndModal
//
//  Created by İsmail MARDİN on 28.03.2020.
//  Copyright © 2020 ismailmardin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
   
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.edgesIgnoringSafeArea(.all)
                VStack{
                  
                    
                    NavigationLink(destination:DestinationView(isCustomViewShow:true,isNavBackShow: true,customNavTitle: "my title <3")){
                        Text("Show  DestinationView with custom nav").foregroundColor(Color.white).font(.headline)
                    }.padding()
                    
                    NavigationLink(destination:DestinationView(isCustomViewShow:true,isNavBackShow: false,customNavTitle: "no back buton")){
                        Text("Show  no back button nav").foregroundColor(Color.white).font(.headline)
                    }
                }.padding()
                
                 }//ZStackFinish
            
           
            
        }//Navigation Finish
    }
}


 

struct DestinationView: View {
    @Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
      var isCustomViewShow = true
      var isNavBackShow = true
      var customNavTitle = "Custom nav title"
    var body: some View {
        ZStack{
            NavigationView{
                Text("")
            }.navigationBarTitle("hidden title")
                .navigationBarHidden(true)
            Color.orange.edgesIgnoringSafeArea(.all)
           
            VStack{
               if(isCustomViewShow){
                     CustomNavigationView(isNavBackShow:isNavBackShow,customNavTitle:customNavTitle )
                                                   }
                          
                 Text("Detination View")
                           Button(action:{
                               self.presentationMode.wrappedValue.dismiss()
                              }){
                                   Text("Back main view")
                               
                           }
                           Spacer()
            }
            
           
        }   //ZStack Finish
    }
}


struct CustomNavigationView: View {
    
    @Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
    //self.presentationMode.wrappedValue.dismiss()
    var isNavBackShow = true
    var customNavTitle = "Custom nav title"
    var navButtons:[Button<Image>] = [
    
        Button(action: {}) {
            Image(systemName:"ellipsis.circle.fill")
        },
        
        Button(action: {}) {
            Image(systemName:"square.and.pencil")
        }
    ]
    
    var body: some View {
        VStack{
               HStack{
                
                if (isNavBackShow){
                    Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                              Image(systemName:"chevron.left")
                              .foregroundColor(.black)
                              .padding(.trailing,10)
                           }
                   }
                    
                      Text(customNavTitle)
                      .font(.system(size:35,weight: .bold))
                      Spacer()
                ForEach(0..<navButtons.count){i in
                    self.navButtons[i]
                        .foregroundColor(.black)
                        .padding(.trailing,10)
                    
                }
                      }.padding()
               
        }//VStack Finish
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

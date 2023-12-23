//
//  HeaderBar.swift
//  VendorUpgrade
//
//  Created by Haadhya on 23/12/23.
//

import SwiftUI
struct HeaderBar: View {
    @State var search = ""
    @State var isShowingSettings: Bool = false
    @AppStorage("selectedType") var selectedType: String?
    var category: [OnboardCategory] = categoryData
    @State var subCatfilter: SubCatfilter?

    let subCatfilters: [SubCatfilter] = [
        SubCatfilter(subCatname: "weddinng", Category_familyname: "Wedding"),
        SubCatfilter(subCatname: "Post Wedding", Category_familyname: "Wedding"),
        SubCatfilter(subCatname: "Pre wedding", Category_familyname: "Wedding"),
    ]
    var body: some View {
          ZStack(alignment: .top) {
              LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]), startPoint: .top, endPoint: .bottom)
            // Or any other color you like to color safe area with
            .ignoresSafeArea() // 1*
//
//                  LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]), startPoint: .top, endPoint: .bottom)
//                      .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)*0.25, alignment: .center)
//                      .edgesIgnoringSafeArea(.all)
                  
                  
                  VStack {
                      HStack {
                          Text(selectedType ?? "CategoryName")
                              .bold()
                              .font(.title)
                              .multilineTextAlignment(.trailing)
                              .foregroundColor(.white)
                              .padding(.leading, 10)
                              .padding(.top, 30)
                          Button(action: {
                              isShowingSettings = true
                          }) {
                              Image(systemName: "slider.horizontal.3")
                                  .foregroundColor(.white)
                          } // Button
                          .sheet(isPresented: $isShowingSettings) {
                              SettingsView()
                          }
                          .padding(.trailing, 20)
                          .padding(.top, 30)
                          .font(.title2)
                      }
                      Picker("Choose a client", selection: $subCatfilter) {
                      ForEach(self.subCatfilters, id: \.id) { (subCat: SubCatfilter) in
                              Text("\(subCat.subCatname) ").tag(subCat as SubCatfilter?)
                          }
                      }
                      .accentColor(.white)
                      .padding(.top, -10)


                      HStack {
                          Image(systemName: "magnifyingglass")
                              .foregroundColor(.gray)
                              .font(.title3)
                          TextField("Search Venddors ...", text: $search)
                              .font(.subheadline)
                      }
                      .frame(width:  ( UIScreen.main.bounds.width)*0.85, height: 40, alignment: .leading)
                      .padding(.leading, 30)
                      .background(Color.white)
                      .cornerRadius(10)
                      
                  }
              }
            
        }
    }
struct SubCatfilter: Identifiable , Hashable{
    let id = UUID()
    var subCatname : String
    var Category_familyname : String
}

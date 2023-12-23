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
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), Color(#colorLiteral(red: 0.9843164086, green: 0.9843164086, blue: 0.9843164086, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)*0.25, alignment: .center)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                HStack {
                    Text(selectedType ?? "CategoryName")
                        .bold()
                        .font(.title)
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(.white)
                        .padding(.leading, 20)
                        .padding(.top, -20)
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
                    .padding(.top, -10)
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
                        .font(.title)
                    TextField("Search by name ...", text: $search)
                        .font(.title3)
                }
                .frame(width:  ( UIScreen.main.bounds.width)*0.85, height: 40, alignment: .leading)
                .padding(.leading, 20)
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

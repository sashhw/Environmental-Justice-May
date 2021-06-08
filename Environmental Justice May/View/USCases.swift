//
//  USCases.swift
//  Environmental Justice May
//
//  Created by Sasha on 6/4/21.
//

import SwiftUI

struct USCases: View {
    
  @ObservedObject var caseListVM = CaseListViewModel()
  let caseRepository = CaseRepository()
  @State var presentAddNewItem = false
    
    @State private var showingSheet = false
    
    var body: some View {
        
        
//        ZStack {
//            Group {
//        Image("rainbow")
//            .resizable()
//            .scaledToFill()
//            .edgesIgnoringSafeArea(.all)
////            .frame(width: 900, height: 1100)
////            .cornerRadius(5)
//            .shadow(color: .black, radius: 4)
//            .opacity(0.6)
//            }
//        ScrollView(.vertical) {
            VStack(alignment: .leading) {
               
            
            List {
                ForEach(caseListVM.caseCellViewModels) { caseCellVM in
                    CaseCell(caseCellVM: caseCellVM)
                }
                .onDelete(perform: delete)
                
                
                if presentAddNewItem {
                    CaseCell(caseCellVM: CaseCellViewModel(ejCase: Case(name: "", year: 0, info: "", photo: "", location: ""))) { ejCase in
                        self.caseListVM.addCase(ejCase: ejCase)
                        self.presentAddNewItem.toggle()
                    }
                    
                }

    }
            .toolbar {
                EditButton()
                }
                
                Button(action: { self.presentAddNewItem.toggle() }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Add new U.S. Case")
                        
           
                    
                    
            }
        }
            .padding()
            }
        }
    func delete(at offsets: IndexSet) {
        caseListVM.caseCellViewModels.remove(atOffsets: offsets)
        }
}
    
        
    
struct USCases_Previews: PreviewProvider {
    static var previews: some View {
        USCases()
    }
}


struct CaseCell: View {
    @ObservedObject var caseCellVM: CaseCellViewModel
    var onCommit: (Case) -> (Void) = { _ in }
    @State var ejCase: String = ""
    
    var body: some View {

        HStack {
        
        
        HStack {
           Spacer()
            TextField("Add new U.S. Case", text: $caseCellVM.ejCase.name, onCommit: {
                self.onCommit(self.caseCellVM.ejCase)
            })
            
        Spacer()
            
                NavigationLink(destination: DetailView(caseCellVM: caseCellVM)) {
                    Text("")
    }
        }
}
        }
}
                
                    
   




struct DetailView: View {
   
    @ObservedObject var caseCellVM = CaseCellViewModel(ejCase: Case(name: "", year: 0, info: "", photo: "", location: ""))
    var onCommit: (Case) -> (Void) = { _ in }
    @State var ejCase: String = ""
    @State var presentActionSheet = false
    @ObservedObject var caseListVM = CaseListViewModel()
    let caseRepository = CaseRepository()
    @Environment(\.presentationMode) var presentationMode
    @State private var selection = Date()
    let years = [1920...2021]
    var body: some View {
        
       
            VStack {
           
            HStack {
            Text("Name:")
                .font(.title3)
               
            TextField("Name", text: $caseCellVM.ejCase.name, onCommit: {
                self.onCommit(self.caseCellVM.ejCase)
                    
            })
            .padding()
            .font(.title3)
            }
            
           
//            Text("Year:")
//                .font(.title3)
//            TextField("Year", text: $caseCellVM.ejCase.year, onCommit: {
//                self.onCommit(self.caseCellVM.ejCase)
//            })
//            .padding()
//            .font(.title3)
                HStack {
                 Text("Year:")
                    
                    Picker("Year:", selection: $caseCellVM.ejCase.year) {
                ForEach(1920...2021, id: \.self) {
                    Text(String($0))
                    }
                            }
                }
            
            HStack {
            Text("Location:")
                .font(.title3)
            TextField("Location", text: $caseCellVM.ejCase.location, onCommit: {
                self.onCommit(self.caseCellVM.ejCase)
            })
            .padding()
            .font(.title3)
            }
            
            HStack {
            Text("Info:")
                .font(.title3)
               
            TextEditor(text: $caseCellVM.ejCase.info)
//                       , onCommit: {
//                self.onCommit(self.caseCellVM.ejCase)
                    
            }
            .padding()
            .font(.title3)
            }
                
//            HStack {
//            Text("Location:")
//                .font(.title3)
//            TextField("Location", text: $caseCellVM.ejCase.location, onCommit: {
//                self.onCommit(self.caseCellVM.ejCase)
//            })
            .padding()
            .font(.title3)
            }
}
            
            
        
           
            
        
       
              

        
    

       
        
 
    


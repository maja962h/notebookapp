//
//  ContentView.swift
//  NotebookDemo
//
//  Created by Maja Matboue on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var notes = [
         Note(title:"One"),
         Note(title:"Two"),
         Note(title:"Three")
     ]
    
    
     var body: some View {
         VStack{
             
             Button("Add"){
                  notes.append(Note(title:"New note"))
                  
                 }.frame(width: 80, height: 30)
                  .foregroundColor(Color.blue)
                  .cornerRadius(10)
        
        NavigationView {
            List {
                    ForEach(notes, id: \.self) { note in
                        NavigationLink(destination: newView(text: note.title)){
                            Text(note.title)
                        }
                    }
                    .onDelete { notes.remove(atOffsets: $0) }
                    .onMove { notes.move(fromOffsets: $0, toOffset: $1) }
                    }
                     .navigationTitle("Notes")
                     .toolbar {
                         EditButton()
                }
            }
             
         }
     }
}

struct Note:Hashable, Identifiable{
    var id = UUID()
    let title:String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

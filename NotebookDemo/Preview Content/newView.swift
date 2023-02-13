//
//  newView.swift
//  NotebookDemo
//
//  Created by Maja Matboue on 07/02/2023.
//

import SwiftUI

struct newView: View {
    @State var text:String
    var body: some View {
            TextEditor(text: $text)
        
    }
}

struct newView_Previews: PreviewProvider {
    static var previews: some View {
        newView(text: "Write some text")
    }
}

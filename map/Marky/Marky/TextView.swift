//
//  TextView.swift
//  Marky
//
//  Created by richard Haynes on 6/3/25.
//

import SwiftUI


struct TextView : NSViewRepresentable {
    func updateNSView(_ nsView: NSTextView, context: Context) {
        nsView.textStorage?.setAttributedString(attributeText)
    }
    
    let attributeText: NSAttributedString
    
    func makeNSView(context: Context) -> NSTextView {
        let textView = NSTextView()
        textView.isEditable = false
        textView.drawsBackground = false
        textView.textContainerInset = NSSize(width: 5, height: 5)
        textView.isSelectable = false
        textView.string = attributeText.string
        textView.typingAttributes = attributeText.attributes(at: 0, effectiveRange: nil)
        return textView
    }
    
}

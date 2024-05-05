//
//  ContentView.swift
//  WebScrapingSwiftUI
//
//  Created by Evgeniy Kostin on 04.05.2024.
//

import SwiftUI
import SwiftSoup

struct ContentView: View {
    var body: some View {
        Button("Run SwiftSoup", action: {
            let html = "<html><head><title>First parse</title></head>" +
            "<body><p>Parsed HTML into a doc.</p> <p>An <a href='http://example.com/'><b>example</b> link.</p></body></html>"
            
            do{
                let document:Document = try SwiftSoup.parse(html)
                let link: Element = try document.select("a").first()!
                let getLink = try link.attr("href")
                
                return print(getLink)
            }catch{
                print("Error")
            }
        })
    }
}

#Preview {
    ContentView()
}

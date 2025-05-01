//
//  ProverbViewModel.swift
//  Shuzi
//
//  Created by Pankaj Kumar Rana on 3/27/25.
//

import Foundation
import Observation

@Observable
class ProverbViewModel {
    var proverbModel: ProverbModel = ProverbModel.defaultQuote()
    
    let urlString = "https://chinese-proverbs.onrender.com/api/proverbs/random"
    
    func getRandomQuote() {
        getQuote( urlString: urlString)
    }
    
    private func getQuote( urlString: String) {
        // Create URL
        guard let url = URL(string: urlString) else { return }
        
        // Send a GET request from the quote API
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Try to  get data and any error information
        let task = URLSession.shared.dataTask(with: request) { data,response,error in
            
            let jsonDecoder = JSONDecoder()
            
            // This is called if error is not nil (there is an error)
            if let error {
                print(error)
                return
            }
            
            // Get data if it is not nil
            guard let data = data else {
                print("data was nil")
                return
            }
            
            do {
                let newProverbModel = try jsonDecoder
                    .decode(ProverbModel.self, from: data)
                
                print(newProverbModel.proverb)
                print(newProverbModel.pinyin)
                print(newProverbModel.translation)
                
                // Crucial step - update quoteModel
                DispatchQueue.main.async {
                    self.proverbModel = newProverbModel
                }
            } catch {
                print(data.description)
                print(error)
            }
        }
        
        task.resume()
    }
}

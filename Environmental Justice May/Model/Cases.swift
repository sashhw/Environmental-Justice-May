//
//  Cases.swift
//  Environmental Justice May
//
//  Created by Sasha on 6/6/21.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift


struct Case: Codable, Identifiable {
  @DocumentID var id: String?
    var name: String
    var year: Int
    var info: String
    var photo: String
    var userId: String?
    var location: String    
    
    
    }






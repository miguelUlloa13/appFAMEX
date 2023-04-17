//
//  CharacterModel.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 07/02/23.
//

import Foundation


/*
    // MARK: - Respuesta del servidor (JSON)

        // Pagina para leer mejor un JSON> https://jsonformatter.curiousconcept.com/#

/*
        // URL: https://gorest.co.in/public-api/users
 
    {
    "code":200,
    "meta":{
       "pagination":{
          "total":2498,
          "pages":250,
          "page":1,
          "limit":10
       }
    },
    "data":[
       {
          "id":372875,
          "name":"Gati Kapoor I",
          "email":"i_gati_kapoor@dach.name",
          "gender":"male",
          "status":"active"
       },

*/

    // MARK: - Mapeo de la respuesta

        // Respuestas por parte del servidor
            // Con el struct se descompone la respuesta del servidor en objetos
            // Se coloca las propiedades que se van a usar
            // Los objetos(propiedades) se declaran opcionales porque pueden ser nulos y asi evitar problemas con el servidor

struct UserResponse: Decodable {

    let code: Int?      // code: objeto de tipo entero
    let meta: Meta?     // meta: objeto complejo
    let data: User?     // data: objeto complejo

}
    // Protocolo Decodable - El objeto es capaz de decodificar la respuesta en diferentes parametros entendibles por swift
    
        // Meta es un objeto que puede ser nil (nulo), es decir, se puede colocar o no el objeto Meta.
struct Meta: Decodable {


}

struct User: Decodable {
    let id: Int?
    let name: String?
    let email: String?
    let gender: Date?
    let status: String?

        // Camel case
    enum CodingKeys: String, CodingKey {
        case id
        case user_id
        case title
        case dueOn = "due_on"   // Convertir de Snake case a Camel case
        case status
    }

}


*/




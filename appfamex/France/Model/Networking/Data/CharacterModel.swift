//
//  CharacterModel.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 07/02/23.
//

import Foundation

// MARK: - Prueba con primer API -

//  Respuesta del servidor (JSON)
/*
 // URL: https://gorest.co.in/public-api/todos/2000
 
 {
    "code":200,
    "meta":null,
    "data":{
       "id":2000,
       "user_id":4126,
       "title":"Thymbra caries votum ducimus velum corrumpo defessus tricesimus denuncio.",
       "due_on":"2023-01-01T00:00:00.000+05:30",
       "status":"completed"
    }
 }
 
*/

    // Mapeo de la respuesta
struct UserRespone: Decodable {
    
    let code: Int?
    let meta: Meta?
    let data: User?
    
}
// Protocolo Decodable - El objeto es capaz de decodificar la respuesta en diferentes parametros entendibles por swift
    // *NOTA: CON EL STRUCT DESCOMPONE LA RESPUESTA DEL SERVIDOR EN OBJETOS

struct User: Decodable {
    let id: Int?
    let user_id: Int?
    let title: String?
    let dueOn: Date?
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

struct Meta: Decodable {

    
}

// MARK: - Prueba con segunda API -

/*
 
 // URL: https://rickandmortyapi.com/api/character
 
 {
   "info": {
     "count": 826,
     "pages": 42,
     "next": "https://rickandmortyapi.com/api/character/?page=2",
     "prev": null
   },
   "results": [
     {
       "id": 1,
       "name": "Rick Sanchez",
       "status": "Alive",
       "species": "Human",
       "type": "",
       "gender": "Male",
       "origin": {
         "name": "Earth",
         "url": "https://rickandmortyapi.com/api/location/1"
       },
       "location": {
         "name": "Earth",
         "url": "https://rickandmortyapi.com/api/location/20"
       },
       "image": "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
       "episode": [
         "https://rickandmortyapi.com/api/episode/1",
         "https://rickandmortyapi.com/api/episode/2",
         // ...
       ],
       "url": "https://rickandmortyapi.com/api/character/1",
       "created": "2017-11-04T18:48:46.250Z"
     },
     // ...
   ]
 }
 
 */


// Mapeo de la respuesta

/*
"info": {
  "count": 826,
  "pages": 42,
  "next": "https://rickandmortyapi.com/api/character/?page=2",
  "prev": null
},
 */
struct CharacterResponse: Decodable {

    let count: Int?
    let meta: Meta?
    let data: User?

}
// Protocolo Decodable - El objeto es capaz de decodificar la respuesta en diferentes parametros entendibles por swift
// *NOTA: CON EL STRUCT DESCOMPONE LA RESPUESTA DEL SERVIDOR EN OBJETOS

struct User: Decodable {
    let id: Int?
    let user_id: Int?
    let title: String?
    let dueOn: Date?
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

struct Meta: Decodable {


}

// MARK: - Prueba con tercera API -

/*
 
 {
     "status": "ok",
     "totalResults": 34,
     -"articles": [
         -{
         -"source": {
         "id": null,
         "name": "EL PAÍS"
         },
             "author": "Iker Seisdedos",
             "title": "Discurso del estado de la Unión 2023, en vivo | Biden tiende la mano a los republicanos, apoya a Ucrania y avisa a China - EL PAÍS",
             "description": "El presidente de Estados Unidos presume de sus logros económicos y lanza una proclama en defensa de la democracia",
             "url": "https://elpais.com/internacional/2023-02-07/discurso-del-estado-de-la-union-2023-en-vivo-biden-llamara-a-la-colaboracion-con-los-republicanos.html",
             "urlToImage": "https://imagenes.elpais.com/resizer/qZYhk8b7iU2J7XlEOrIwxSJ3Hv0=/1200x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/VXQK64NSSXJPCPHNZ56OTKG35E.jpg",
             "publishedAt": "2023-02-08T04:37:00Z",
             "content": "Biden llama a la defensa de la democracia con el ejemplo de Paul Pelosi\r\nBiden ha concluido su mensaje con un tema en el que ha insistido una y otra vez: la defensa de la democracia. Fue un lema clav… [+2161 chars]"
             },
 
 */

struct conferenciaModelo: Codable {
    let articles: [ConferenciaFrancia]
}

struct ConferenciaFrancia: Codable {             // Campos de la conferencia Francia
    
    let title: String?          // Titulo de la conferencia
    let author: String?         // Conferencista
    let description: String?    // Descripcion
    let url: String?            // Lugar
    let urlToImage:String?      // hora
    let publishedAt: String?    // Fecha
    
}


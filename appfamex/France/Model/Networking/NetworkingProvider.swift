//
//  NetworkingProvider.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 07/02/23.
//

import Foundation
import Alamofire

/*

final class NetworkingProvider {
    
        // MARK: - Properties
    
    static let shared = NetworkingProvider ()
    
    private let kBaseUrl = "https://gorest.co.in/public-api/"   // URL del recurso (Documento JSON)
    private let kStatusOk = 200...299   // codigos de respuesta del servidor (RESPUESTAS SATISFACTORIAS HTTP)
    
        // MARK: - Methods
    
        // Metodo para recuperar un usuario. Para recuperarlo es mediante el "id" como argumento
    func getUser(id: Int, succes: @escaping (_ user: User) -> (),failure: @escaping (_ user: Error?) -> ()) {
        
        let url = "\(kBaseUrl)todos/\(id)"

        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: UserResponse.self, decoder: DateDecoder()) { response in
            
            if let user = response.value?.data {
                
                print(user)
                succes(user)
                
            } else {
                failure(response.error)
            }
            
        }
        
        // Metodo .request
        
        // AF.request(URLConvertible, method: HTTPMethod, parameters: Parameters?, encoder: ParameterEncoder, headers: HTTPHeaders?, interceptor: RequestInterceptor?, requestModifier: RequestModifier?).validate(statusCode: ).responseDecodable
            
            // La mayoria de los argumentos del metodo (constructor) request son opcionales, es decir, se pueden usar o no.
            // Constuctor request de Alamofire:
                // URLConvertible - URL del recurso web
                // method - Metodos Http (get, post, delete, put, etc)
                // parameter - Parametros si se desea enviar algo al servidor.
                // encoder - Tipo de encoding
                // header - tipo de cabecera
                // interceptor - ...
                // requestModifier - ...
            
        // Metodo: .validate
            // Para validar la conexion al servidor
                // Con el argumento "statusCode" se pasa los codigos (secuencia) de respuesta Htpp
                    // Los codigos de respuesta satisfactoria es de 200 a 299.
            
        // Metdo: .response
            // Capturar la respuesta del servidor
            
    }
    
}

/*
    // MARK: - Respuestas por parte del servidor
 
        // Para mas info visitar: https://gorest.co.in
 
 REST API Http Response Codes
 
 200: OK. Everything worked as expected.
 201: A resource was successfully created in response to a POST request. The Location header contains the URL pointing to the newly created resource.
 204: The request was handled successfully and the response contains no body content (like a DELETE request).
 304: The resource was not modified. You can use the cached version.
 400: Bad request. This could be caused by various actions by the user, such as providing invalid JSON data in the request body etc.
 401: Authentication failed.
 403: The authenticated user is not allowed to access the specified API endpoint.
 404: The requested resource does not exist.
 405: Method not allowed. Please check the Allow header for the allowed HTTP methods.
 415: Unsupported media type. The requested content type or version number is invalid.
 422: Data validation failed (in response to a POST request, for example). Please check the response body for detailed error messages.
 429: Too many requests. The request was rejected due to rate limiting.
 500: Internal server error. This could be caused by internal program errors.
 
 */


/*
 
 URL significa Uniform Resource Locator (Localizador de Recursos Uniforme). Una URL no es más que una direccion que es dada a un recurso único en la Web. En teoria, cada URL valida apunta a un único recurso. Dichos recursos pueden ser páginas HTML, documentos CSS, imagenes, etc.
        Ejemplo
        http://www.example.com:80/path/to/myfile.html?key1=value1&key2=value2#SomewhereInTheDocument

 Link Un link se constituye como una herramienta que facilita el acceso a diferentes datos. Un link es un elemento que, en un documento digital, establece un vínculo con otro recurso. El link no solo puede hacer referencia a una página o un sitio diferente. También puede estar vinculado a una parte específica de la misma página, permitir la descarga de un archivo o enviar un correo electrónico, por mencionar algunas posibilidades.
 
 */

*/

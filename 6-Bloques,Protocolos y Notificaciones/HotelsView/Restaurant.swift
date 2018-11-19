//
//  Restaurant.swift
//  HotelsView
//
//  Created by fernando rossetti on 13/12/16.
//  Copyright © 2016 fernando rossetti. All rights reserved.
//

import UIKit

class Restaurant
{
    var name:String
    var details:String
    var ranking:Int
    var image:String
    var images:[String]
    
    convenience init()
    {
        self.init(name:"",details:"",ranking:0,image:"",images:[""])
    }
    
    init (name:String,details:String,ranking:Int,image:String,images:[String])
    {
        self.name = name
        self.details = details
        self.ranking = ranking
        self.image = image
        self.images = images
        
    }
    
    convenience init (name:String,ranking:Int,image:String,images:[String])
    {
        let details = "asdasdasd"
        self.init(name: name,details: details, ranking: ranking,image: image,images: images)
    }
    
    static func restaurants()->[Restaurant]
    {
        
        let data = [["name":"Great Restuarant", "details":"El Tortoni es el paradigma del café porteño, pero poco se sabe de sus orígenes. Un inmigrante francés de apellido Touan decidió inaugurarlo a fines del año 1958. El nombre lo tomó prestado de un establecimiento francés del Boulevard des Italiens adonde se reunía la elite de la cultura parisina del siglo XIX. A fines de siglo fue adquirido por otro francés de nombre Celestino Curutchet quien le dio su propia impronta.","ranking":"4","image":"restaurant1","images":["restaurant1.1","restaurant1.2","restaurant1.3"]],
                    ["name":"Argentum Restuarant", "details":"Sin dudas un clásico porteño, El Cuartito es una de las tres o cuatro pizzerías mejores de Buenos Aires. Realmente son una delicia aunque un poco caras para mi gusto, pero esto se debe quizás a que siempre está llena de gente (tanto locales como turistas). No es un buen lugar si se busca una conversación, ya que es bastante ruidosa. Pero sí, si lo que se quiere es comer una buena pizza o un rico flan casero con dulce de leche. Nosotros comimos Napolitana con roquefort y es altamente recomendable. Existen dos opciones para disfrutar de estas pizzas, comer sentado con una ambientación muy porteña en la que abundan los cuadros con glorias del deporte nacional o comer en la barra de parado a un precio más económico.", "ranking":"5", "image":"restaurant2","images":["restaurant2.1","restaurant2.2","restaurant2.3"]],
                    ["name":"Italian Restuarant", "details":"La Confitería Las Violetas es una famoso, bar, tetería, confitería sito en la esquina de Rivadavia y Medrano en el barrio de Almagro en la ciudad de Buenos Aires.¨Pertenece al grupo de Bares Notables de la ciudad; Fue inaugurada el 21 de Septiembre de 1884 y posteriormente remodelada enla década de 1920 La adornan vidrieras y puertas de vidrios curvos, vitrales franceces y pisos de mármol italiano.", "ranking":"3", "image":"restaurant3","images":["restaurant3.1","restaurant3.2","restaurant3.3"]]]
        
        var restaunrants = [Restaurant]()
        for item in data
        {
            let restaurant = Restaurant(name: item["name"]! as! String, details: item["details"]! as! String, ranking: Int(item["ranking"]! as! String)!, image: item["image"]! as! String, images: item["images"]! as! [String])
            restaunrants.append(restaurant)
        }
        return restaunrants
        
    }
    
  
        
    
}

import UIKit

let original="la historia de mi vida"



func dejarSinEspacios(ori:String) -> String {
    let sinEspacios:String=ori.replacingOccurrences(of: " ", with: "")
    return sinEspacios

}

func crearLista(texto: String) -> Array<String> {
    
    var listaLetras=[String]()
    
    for letra in texto {
        
        let stTexto=String(letra)
       
        if !listaLetras.contains(stTexto){
            listaLetras.append(stTexto)
        }
    }
    
    return listaLetras
}


func contarLetras(textoOriginal:String)->(){
    
    let sinEspacios=dejarSinEspacios(ori: textoOriginal)
    let listaLetras=crearLista(texto: sinEspacios)
    
    for letra in listaLetras{
        
        let cantidad=sinEspacios.filter{String($0) == letra}.count
         print("letra: "+letra+"=:\(cantidad)")
    }
    
    
}

contarLetras(textoOriginal: original)












//
//  Tools.swift
//  Reta al Oraculo
//
//  Created by user on 4/20/16.
//  Copyright © 2016 cubix. All rights reserved.
//

import Foundation
struct Tools {
    static var questions = [
        ["q":"¿Las amas de casa jóvenes son las que más compran en el canal moderno?","a":"Según información de Kantar Worldpanel, las amas de casa maduras de 55 a más son las que más compran en el canal moderno, representando el 35%.","validate": false],
        ["q":"¿Las amas de casa arequipeñas  compran alimentos con mayor frecuencia que las amas de casa trujillanas?","a":"Según información de Kantar Worldpanel, las amas de casa arequipeñas acuden al canal 228 veces, mientras que las amas de casa trujillanas lo hacen 239 veces","validate":false],
        ["q":"La penetración de agua envasada es más alta en Chiclayo que en Piura? ","a":"Según información de Kantar Worldpanel, el 78% de los hogares de Chiclayo compran agua en un año, mientras que en Piura es el 95 %.","validate":false],
        ["q":"¿Las amas de casa de 35 a 44 años son las que más incrementaron el consumo de shampoo en el 2015?","a":"Según información de Kantar Worldpanel, las amas de casa de 35 a 44 años fueron las que más incrementaron su consumo de shampoo en el 2015  frente al resto de edades, creciendo 11%.","validate":true],
        ["q":"¿Los hogares del NSE Medio compran con mayor frecuencia suavizantes que las amas de casa del NSE Alto?","a":"Según información de Kantar Worldpanel,  las amas de casa de NSE medio compran la categoría cada 17 veces en un año, mientras que los NSE Altos lo hace cada 9 veces. ","validate":true],
        ["q":"¿Los hogares peruanos  prefieren consumir mostaza antes que consumir kétchup?","a":"Según información de Kantar Worldpanel el 42% de hogares peruanos consumen kétchup, mientras que solo un 37% consume mostaza.","validate":false],
        ["q":"¿Un ajetreado estilo de vida, impulsa a la practicidad en las actividades del hogar?","a":"Según la información de Kantar Worldpanel, actualmente productos con mayor practicidad como lavavajillas líquido, suavizantes y sazonadores tienen gran aceptación en todas las amas de casa, independientemente del Nivel socio.","validate":true],
        ["q":"¿El 5% de los hogares peruanos hacen compras de productos masivos online?","a":"Según Kantar Worldpanel  el 1% de los hogares peruanos hacen compras de productos de consumo masivo para el  hogar por internet. Principalmente no compran porque muchos no saben cómo hacerlo, tienen desconfianza del uso de la tarjeta o porque no poseen internet.","validate":false],
        ["q":"¿A las amas de casa peruanas les gusta ir de compras así no tengan una necesidad real? ","a":"Según información de Kantar Worldpanel, para el 65% de las amas de casa ir de compras es una necesidad, van solo cuando requieren de algo. ","validate":false],
        ["q":"¿Amas de casa prefieren escuchar radio cuando están en su hogar y tienen tiempo libre?","a":"Según información de Kantar Worldpanel  las amas de casa peruanas disfrutan más escuchar o ver tv cuando tienen tiempo libre y están en su hogar.","validate":false],
        ["q":"¿Hogares peruanos han optado por un mayor consumo de la canasta de alimentos en el 2015?","a":"Según información de Kantar Worldpanel  alimentos es la única canasta que disminuye su consumo en el 2015, siendo la canasta de bebidas la que más se ha intensificado en los últimos meses.","validate":false],
        ["q":"¿Los hogares que conforman la muestra de Kantar Worldpanel es de 3 800 hogares?","a":"El panel de hogares de Kantar Worldpanel está conformado por 3 800 hogares que son representativos de 3 800 000; los mismos que corresponden a una cobertura del 67% de los hogares urbanos a nivel nacional. ","validate":true],
        ["q":"¿Nuestra panelista es visitada por una encuestadora de Kantar Worldpanel  2 veces en una quincena?","a":"Kantar Worldpanel releva la información de los hogares que conforman su panel de forma semanal. Una encuestadora visita a nuestra panelista las 52 semanas del año.","validate":true],
        ["q":"¿El consumo promedio de un hogar es igual al volumen de la categoría entre la penetración de la misma? ","a":"El producto del consumo por acto de compra y la frecuencia con la que acude al canal un ama de casa; el resultado de estas dos variables nos permite dimensionar el consumo promedio de un hogar comprador.","validate":false],
        ["q":"Cuando nuestrSegún metodología de Kantar Worldpanel en Perú, la encuestadora registra las compras bajo recolección “SCANNING”. Consiste en escanear los códigos de barra de cada producto y registrar las compras en un smarthphone.","validate":false],
        ["q":"Las amas de casa están dispuestas  a mantener su marca preferida  del cuidado del cabello por nuevas marcas que le brindan más cantidad y a menor precio?","a":"Según información de Kantar Worldpanel en Perú, marcas que ofertan mayor volumen a un menor precio logran captar  más hogares que antes consumían marcas de valor agregado.","validate":false],
        ["q":"¿Los hogares de NSE Altos están dispuestos a probar marcas económicas?","a":"Según información de Kantar Worldpanel en Perú, hay un mayor consumo  de marcas económicas nos solo en los NSE bajos sino también en los NSE A/B","validate":true],
        ["q":"¿Los hogares peruanos visitan los canales de compra 304 veces en promedio en un año?","a":"Según información de Kantar Worldpanel,  los hogares peruanos acuden casi a diario a los canales a comprar,  teniendo la frecuencia de compra más alta de la Región junto con Bolivia. ","validate":true],
        ["q":"¿Los hogares peruanos  incrementaron  la compra de productos de cuidado personal  en farmacias más que en DTD en el 2015?","a":"Según información de Kantar Worldpanel,  la canasta de cuidado personal creció el año pasado en  farmacias 3.4%, mientras que en D2D decreció -10.2%.","validate":true],
        ["q":"¿El consumo  de la canasta de cuidado personal durante el 2015 estuvo impulsado por una mayor frecuencia de compra, pero con un menor ticket por ocasión?","a":"Según información de Kantar Worldpanel, la canasta de cuidado personal incrementó su frecuencia de compra en 1%, mientras que el ticket promedio también incremento en 2.2 %","validate":false],
        ["q":"¿Hogares de NSE Medio acuden con más frecuencia al canal moderno a  comprar detergente que shampoo?","a":"Según información de Kantar Worldpanel, un hogar del NSE Medio acude a comprar shampoo en el canal moderno 3.3 veces, mientras que detergente lo compra 4.1 veces.","validate":true],
        ["q":"¿La categoría de mantequilla  es comprada por más hogares de la zona de Lima centro que de la Zona de Lima Este? ","a":"Según información de Kantar Worldpanel, el 70.8% de los hogares de la zona Lima centro compra mantequilla en un año, frente a un 29.8% de los hogares de la zona Lima este.","validate":true]
        
    ]
    
    static var selected = 0
}
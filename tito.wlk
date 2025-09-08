object tito {
  var cantidad = 0
  var bebida = cianuro
  
  method peso() = 70
  
  method inerciaBase() = 490
  
  method consumir(unaCantidad, unaBebida) {
    bebida = unaBebida
    cantidad = unaCantidad
  }
  
  method bebida() = bebida
  
  method velocidad() = (bebida.rendimiento(
    cantidad
  ) * self.inerciaBase()) / self.peso()
}

object wisky {
  method rendimiento(cantidad) = 0.9 ** cantidad
}

object cianuro {
  method rendimiento(cantidad) = 0
}

object terere {
  method rendimiento(cantidad) = 1.max(cantidad * 0.1)
}
/*se puede modelar frutas, pero yo le pase directamente los nutrientes*/
object licuado {
  var nutrientes = 0

  method rendimiento(cantidad) {
    return nutrientes * cantidad
  }

  method agregarFruta(cantidad) {
    nutrientes += cantidad
  }

}

object aguaSaborizada {
  
}

object coctel {
  
}


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
  const  nutrientes = []

  method rendimiento(cantidad) {
    return nutrientes.sum() * cantidad
  }

  method agregarIngrediente(cantidad) {
    nutrientes.add(cantidad)
  }

}

object naranja {
    method nutrientes() = 10
}

object mandarina {
    method nutrientes() = 5
}

object manzana {
    method nutrientes() = 4
}

object aguaSaborizada {
    var saborizante = terere

    method saborizar(unaBebida) {
      saborizante = unaBebida
    }

    method rendimiento(cantidad) {
        return 1 + saborizante.rendimiento(cantidad/4)
    }
}

object coctel {
  
}


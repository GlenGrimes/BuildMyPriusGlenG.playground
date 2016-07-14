// -------------------------------------------------------------
//                      BuildMyPriusGlenG
// -------------------------------------------------------------

import UIKit

class Auto {
    var numberOfWheels:Int = 4
    var passengerCapacity:Int = 4
    var topSpeed:Int = 100
    var color:Color = Color.White
    var model:Model = Model.PriusTwo
    var engine:Engine = Engine.GasElectricHybrid
    var options:[Options]
    
    init() {
        self.options = [ Options.BodySideMolding, Options.CargoNet, Options.ShifterApplique ]
    }
    
    init ( mod:Model, eng:Engine, col:Color, opt:[Options]) {
        self.model = mod
        self.engine = eng
        self.color = col
        self.options = opt
    }
    
    func displayAuto ( ) {
        print ( "\tNumber of wheels   = ", self.numberOfWheels )
        print ( "\tPassenger Capacity = ", self.passengerCapacity )
        print ( "\tTop Speed          = ", self.topSpeed )
        print ( "\tColor              = ", self.color )
        print ( "\tModel              = ", self.model )
        print ( "\tEngine             = ", self.engine )
        print ( "\tOptions            = ", self.options )
        print ( )
    }
}

enum Model:String {
    case PriusTwo = "Prius Two"
    case PriusTwoEco = "Prius Two Eco"
    case PriusThree = "Prius Three"
    case PriusThreeTouring = "Prius Three Touring"
    case PriusFour = "Prius Four"
    case PriusFourTouring = "Prius Four Touring"
}

enum Engine:String {
    case GasElectricHybrid = "1.8L 4-Cyl Gas-Electric Hybrid Engine"
    case GasGuzzler = "8-Cylinder Gas-Guzzling"
}

enum Color:String {
    case White = "White"
    case Blue = "Blue"
    case Gray = "Gray"
    case Red = "Red"
    case Charcoal = "Charcoal"
    case Black = "Black"
    case Turquois = "Turquois"
}

enum Options:String {
    case BodySideMolding = "Color-Keyed Body Side Molding"
    case VehicleProtectionPackage = "Vehicle Protection Package"
    case VehicleProtectionPlus = "Vehicle Protection Plus Package"
    case VehicleProtectionPremium = "Vehicle Protection Premium Package"
    case CargoNet = "Cargo Net"
    case ConnectivityKit = "Connectivity Kit"
    case PremimumCarpetMatSet = "Premium Carpet Mat Set"
    case ShifterApplique = "Shifter Applique"
}

var myCar = Auto ( mod:Model.PriusFourTouring, eng:Engine.GasElectricHybrid, col:Color.Blue, opt:[Options.BodySideMolding, Options.ConnectivityKit, Options.ShifterApplique, Options.VehicleProtectionPlus] )

print ( "My Car: ")
myCar.displayAuto()

var yourCar = Auto ( mod:Model.PriusThreeTouring, eng:Engine.GasGuzzler, col:Color.Red, opt:[Options.BodySideMolding, Options.ConnectivityKit, Options.ShifterApplique, Options.VehicleProtectionPlus, Options.CargoNet, Options.PremimumCarpetMatSet] )

print ( "Your Car: ")
yourCar.displayAuto()


var herCar = Auto ( mod:Model.PriusTwo, eng:Engine.GasElectricHybrid, col:Color.Black, opt:[Options.PremimumCarpetMatSet, Options.ConnectivityKit, Options.VehicleProtectionPlus, Options.CargoNet, Options.PremimumCarpetMatSet] )

print ( "Her Car: ")
herCar.displayAuto()










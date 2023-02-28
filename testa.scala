import math._
import scala.util._
import scala.io.StdIn._

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
object Solution extends App {
    val lon_A = readLine.replace(',','.').toFloat
    val lat_A = readLine.replace(',','.').toFloat
    val n = readLine.toInt
    var distance = Double.MaxValue
    var answer = Array[String]()
    for(i <- 0 until n) {
        var defib = readLine.split(';')
        val defib_point:Array[String] = defib.map(x=>x.replace(',','.'))
        val lon_B = defib_point(4).toFloat
        val lat_B = defib_point(5).toFloat
        val x:Double = (lon_B - lon_A)*math.cos((lat_A+lat_B)/2)
        val y:Double = (lat_B - lat_A)
        val d:Double = math.sqrt(math.pow(x,2) + math.pow(y,2))*6371
        if (distance > d){
            distance = d
            answer = defib_point
        }
    }
    println(answer(1))
    // Write an answer using println
    // To debug: Console.err.println("Debug messages...")


}
object Solution extends App {
    val lon = readLine.replace(',','.').toFloat
    val lat  = readLine.replace(',','.').toFloat
    val n = readLine.toInt
    for(i <- 0 until n) {
        var defib = readLine.split(';')
        val defib_lon = defib(4).replace(',','.').toDouble
        val defib_lat = defib(5).replace(',','.').toDouble

    }
}
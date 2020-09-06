.import "utilities2.js" as Utilities2
Qt.include("utilities3.js")
function greeting() {
    console.log("helooo theree");
}

function combineAges(age1, age2){
    console.log("Indirectly calling add method from util1")
    return Utilities2.add(age1,age2);
}

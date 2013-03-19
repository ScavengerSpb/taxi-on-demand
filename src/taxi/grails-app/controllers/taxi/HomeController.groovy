package taxi

class HomeController {

    def index() { }

    def order(String street_from, String house_from, String entrance_from,
              String street_to, String house_to, String entrance_to) {
        def model = [:]
        if (street_from && street_to) {
            model = [
                offerings: [
                    [company: "Такси Мастер", price: "430 р."],
                    [company: "Бешеные Таксомоторы", price: "650 р."],
                    [company: "Красная Цена", price: "350 р."]
                ],
                fromAddress: addressToString(street_from, house_from, entrance_from),
                toAddress: addressToString(street_to, house_to, entrance_to)
            ]
        }
        model
    }

    private static String addressToString(String street, String house, String entrance) {
        def list = [street, house, entrance]
        list.removeAll { !it }
        return list.join(", ")
    }
}

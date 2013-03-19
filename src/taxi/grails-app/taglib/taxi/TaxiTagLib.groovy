package taxi

class TaxiTagLib {
    static namespace = "tx"

    def labelInput = { attrs, body ->
        def tagAttrs = [
            id: attrs.id ?: attrs.name,
            name: attrs.name,
            inputType: attrs.inputType,
            labelClass: attrs.labelClass,
            inputClass: attrs.inputClass,
            inputValue: attrs.name ? params[attrs.name] : null
        ]

        def labelAttrs = [id: "for", labelClass: "class"]
        def inputAttrs = [inputType: "type", id: "id", name: "name", inputClass: "class", inputValue: "value"]

        out << renderTag("label", tagAttrs, labelAttrs, body)
        out << renderTag("input", tagAttrs, inputAttrs)
    }

    private String renderTag(String tagName, attrValues, attrsMap, Closure tagBody = null) {
        def tagAttrs = new StringBuilder()
        attrsMap.each { entry ->
            def val = attrValues[entry.key]
            if (val != null) {
                if (tagAttrs.length() > 0) {
                    tagAttrs.append(" ")
                }
                tagAttrs.append("${entry.value}=\"${val}\"")
            }
        }

        return (tagBody == null) ?
            "<${tagName} ${tagAttrs.toString()} />" :
            "<${tagName} ${tagAttrs.toString()}>${tagBody()}</${tagName}>"
    }
}

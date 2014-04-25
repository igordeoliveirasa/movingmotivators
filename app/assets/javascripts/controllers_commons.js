getJSONByKeyAndValue = function(jsons, key, value) {
    var ret = [];
    for (var i=0; i<jsons.length; i++) {
        if (jsons[i][key] == value) {
            ret.push(jsons[i]);
        }
    }
    return ret;
}
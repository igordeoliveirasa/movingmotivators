
describe('ControllersCommons', function(){

    var jsons = [{"id":1,"name":"Game1","url":"http://0.0.0.0:3000/games/1.json"},
        {"id":2,"name":"Game2","url":"http://0.0.0.0:3000/games/2.json"},
        {"id":3,"name":"Game3","url":"http://0.0.0.0:3000/games/3.json"},
        {"id":4,"name":"Game4","url":"http://0.0.0.0:3000/games/4.json"},
        {"id":5,"name":"Game5","url":"http://0.0.0.0:3000/games/5.json"}];

    it('should return the right json by id', function(){
        expect(getJSONByKeyAndValue(jsons, "id", 4)[0].name).toBe("Game4");
    });

    it('should return empty by invalid json id', function(){
        expect(getJSONByKeyAndValue(jsons, "id", 10).length).toBe(0);
    });
});

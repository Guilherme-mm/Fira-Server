class Asset {
    constructor(){
        this.id = null;
        this.name = null;
        this.resourceOwner = null;
    }

    get resourceOwner() {
        return (async () => {
            return this.resourceOwner;
        })();
    }

    setId(id){
        this.id = id;
    }
    
    setName(name){
        this.name = name;
    }
    
    setResourceOwner(resourceOwner){
        this.resourceOwner = resourceOwner;
    }
}

module.exports = Asset;
class MissingMethodOverride extends Error {
    constructor(message){
        super(message);
        this.name = "MissingMethodOverride"
    }
}

module.exports = MissingMethodOverride;
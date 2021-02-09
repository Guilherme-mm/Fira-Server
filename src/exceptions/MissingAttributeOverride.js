class MissingAttributeOverride extends Error {
    constructor(message){
        super(message);
        this.name = "MissingAttributeOverride"
    }
}

module.exports = MissingAttributeOverride;
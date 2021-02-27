function getGrantType(request){

}

function oauth2Middleware(req, res, next) {
    console.log(req.headers);
    const grantType = getGrantType(req);
    next();
}

module.exports = oauth2Middleware;
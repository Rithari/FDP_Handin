conn = new Mongo();
db = conn.getDB("fdpdata");

db.createUser({
    user: 'rithari',
    pwd: 'Ja32daZYJWWYdNmSifLX',
    roles: [
        {
            role: 'dbOwner',
            db: 'fdpdata',
        },
    ],
});

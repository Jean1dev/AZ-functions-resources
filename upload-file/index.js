const multpart = require('parse-multipart')

module.exports = async function (context, req) {
    try {
        if (!req.query.filename) {
            context.res = {
                status: 400
            }

            return
        }

        const buffer = Buffer.from(req.body)
        const boundary = multpart.getBoundary(req.headers['content-type'])
        const parts = multpart.Parse(buffer, boundary)

        context.bindings.storage = parts[0].data

        context.res = {
            status: 201
        }
    } catch (error) {
        context.log(error.message)
        throw error
    }
}

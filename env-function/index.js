require('dotenv').config()
const { DotenvAzure } = require('dotenv-azure')

module.exports = async function (context, req) {
    await new DotenvAzure().config()
    context.log(process.env.AMBIENTE)
    context.log(process.env.APP_CONFIGURATION_VALUE)
    context.res = {
        status: 204
    };
}

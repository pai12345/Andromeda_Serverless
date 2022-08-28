'use strict';

module.exports.notfound = async () => {
    return {
      statusCode: 404,
      body: "Not Found"
    };
};

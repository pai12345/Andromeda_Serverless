'use strict';

exports.notfound = async () => {
    return {
      statusCode: 404,
      body: "Not Found"
    };
};

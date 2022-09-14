"use strict";

const getparams = (req_event, req_context) => {
  return {
    req_event: req_event,
    req_context: req_context,
    val: "Service Not Found"
  };
};

const get_output = (statuscode, body, reqheaders) => {
  return {
    statusCode: statuscode,
    body: JSON.stringify(body),
    headers: reqheaders,
  };
};

export const notfound = async (event, context) => {
  const headers = { "Content-Type": "application/json" };
  const result = [];
  result.push(getparams(event, context));
  console.log(get_output(200, result, headers));
  return get_output(200, result, headers);
};

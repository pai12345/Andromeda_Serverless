"use strict";

import date from "date-and-time";
const current_date = date.format(new Date(), `YYYY/MM/DD,HH:mm:ss`);

const getdate = (dats) => {
  return `currentdatetime is ${dats}`;
};

const getparams = (req_event, req_context) => {
  return {
    req_event: req_event,
    req_context: req_context,
  };
};

const get_output = (statuscode, body, reqheaders) => {
  return {
    statusCode: statuscode,
    body: JSON.stringify(body),
    headers: reqheaders,
  };
};

export const currentdats = async (event, context) => {
  const headers = { "Content-Type": "application/json" };
  const result = [];
  result.push(getdate(current_date), getparams(event, context));
  console.log(get_output(200, result, headers));
  return get_output(200, result, headers);
};

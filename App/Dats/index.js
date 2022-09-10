"use strict";

import date from "date-and-time";
const current_date = date.format(new Date(), `YYYY/MM/DD,HH:mm:ss`);

const getdate = (dats) => {
  return {
    statusCode: 200,
    currentdatetime: dats,
  };
};

const getparams = (req_event, req_context) => {
  return {
    req_event: req_event,
    req_context: req_context,
  };
};

export const currentdats = async (event, context) => {
  const result = [];
  result.push(getdate(current_date), getparams(event, context));
  console.log(result);
  return result;
};

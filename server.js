
import bodyParser from 'body-parser';
import Application from "express";
import { Api } from './api/api.js';
import { OnApplicationStart } from "./handlers/on-start.js";
import { ErrorHandler } from "./handlers/error-handler.js";
import { RouterErrorHandler } from "./handlers/router-error-handler.js";

const app = Application();
app.use(bodyParser.json());
app.use('/api', Api);
app.use(Application.static('public'));

app.use(RouterErrorHandler);
app.use(ErrorHandler);
app.listen(8090, OnApplicationStart(8090));
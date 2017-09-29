import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';
import RootReducer from '../reducers/root_reducer';
import { composeWithDevTools } from 'redux-devtools-extension';
import logger from 'redux-logger';

const middlewares = [thunk, logger];

if (process.env.NODE_ENV !== 'production') {
  const { logger } = require('redux-logger');
  middlewares.push(logger);
}

const configureStore = (preloadedState = {}) => (
  createStore(
    RootReducer,
    preloadedState,
    composeWithDevTools(applyMiddleware(thunk, logger))
  )
);

export default configureStore;

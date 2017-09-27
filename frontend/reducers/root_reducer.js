import {combineReducers} from 'redux';
import SessionReducer from './session_reducer';
import ErrorsReducer from './errors_reducer';
import EntitiesReducer from './entities_reducer';
import FiltersReducer from './filters_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  errors: ErrorsReducer,
  entities: EntitiesReducer,
  filters: FiltersReducer
});

export default RootReducer;

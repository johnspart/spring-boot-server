import _ from 'lodash';
import {FETCH_POSTS, GET_POST, LOAD_COMMENTS} from "../actions/type";


export default function(state = {}, action) {
    switch (action.type) {
        case FETCH_POSTS:
            return _.mapKeys(action.payload.data, 'id');
        case GET_POST:
            return {...state, [action.payload.data.id]: action.payload.data};
        case LOAD_COMMENTS:
            return _.mapKeys(action.payload.data);
        default:
            return state;
    }
}
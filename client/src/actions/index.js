import axios from 'axios';
import {FETCH_POSTS, GET_POST, ADD_COMMENT, LOAD_COMMENTS} from "./type";

const ROOT_URL = 'http://localhost:8090/';

export function fetchPosts() {
    const request = axios.get(`${ROOT_URL}article/all`);

    return {
        type: FETCH_POSTS,
        payload: request
    };
}

export function createComment(value, callback) {
    const request = axios.post(`${ROOT_URL}article/addComment`, value)
    .then(() => console.log('Add comment'))
    .then(() => callback())

    return {
        type: ADD_COMMENT,
        payload: request
    };

}

export function fetchPost(id) {
    const request = axios.get(`${ROOT_URL}/article/${id}`);

    return {
        type: GET_POST,
        payload: request
    };
}

export function loadComments(articleId) {
    const request = axios.post(`${ROOT_URL}/comment/${articleId}`);

    return {
        type: LOAD_COMMENTS,
        payload: request
    };
}
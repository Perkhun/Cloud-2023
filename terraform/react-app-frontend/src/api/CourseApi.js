import SERVER from './serverUrl';

const SERVER_URL = `${SERVER}/courses`;

class CourseApi {
    static getAllCourses() {
      return fetch(SERVER_URL).then(response => response.json());
    }

    static saveCourse(course) {
      if (course.id) {
        return fetch(`${SERVER_URL}/${course.id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(course)
        }).then(response => response.json());
      } else {
        return fetch(SERVER_URL, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(course)
        }).then(response => response.json());
      }
    }

    static deleteCourse(courseId) {
        return fetch(`${SERVER_URL}/${courseId}`, {method:'DELETE'});
    }


    static getCourse(courseId) {
        return fetch(`${SERVER_URL}/${courseId}`).then(response => response.json());
    }

}

export default CourseApi;

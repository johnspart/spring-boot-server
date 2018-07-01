import React, { Component } from "react";
import { Field, reduxForm, formValues, change} from "redux-form";
import { Link } from "react-router-dom";
import { connect } from "react-redux";
import { createComment } from "../../actions";

class CommentForm extends Component {

constructor(state) {
  super(state);

  this.state = {
    commentText: '',
  };
  

  this.onSubmit.bind(this);
  this.onChangeText.bind(this);
}

componentDidMount() {
      this.props.dispatch(change("CommentNewForm","id_user",1));
      this.props.dispatch(change("CommentNewForm","id_article", this.props.articleId)); 
      this.props.dispatch(change("CommentNewForm","text", "")); 
}

renderField(field) {
    const { meta: { touched, error } } = field;
    const className = `form-group ${touched && error ? "has-danger" : ""}`;

    return (
      <div className={className}>
        <label>{field.label}</label>
        <textarea onChange={event => {this.onChangeTex(event)}} className="form-control" type="text" {...field.input} />
        <div className="text-help">
          {touched ? error : ""}
        </div>
      </div>
    );
  }

  onChangeText(e) {
    this.setState({commentText: e.target.value});
    console.log(this.state.commentText);
  }

   onSubmit(values) {
    this.props.createComment(values, () => {
      this.setState({commentText: ''});
    });
  }

render() {
    const { handleSubmit } = this.props;


    return (  
      <form onSubmit={handleSubmit(this.onSubmit)}>
        <Field
          label="Comment"
          name="text"
          value={this.props.commentText}
          component={this.renderField}
          
        />
        <button type="submit" className="btn btn-primary">Submit</button>
      </form>
    );
  }
}

function validate(values) {
  const errors = {};

  // Validate the inputs from 'values'
  if (!values.text) {
    errors.text = "Enter some content please";
  }

  // If errors is empty, the form is fine to submit
  // If errors has *any* properties, redux form assumes form is invalid
  return errors;
}

export default reduxForm({
  validate,
  form: "CommentNewForm"
})(connect(null, { createComment })(CommentForm));

import React from "react"
import PropTypes from "prop-types"
import {InputAssignments} from "./InputAssignments.js"
import {TogglePostMaterials} from "./TogglePostMaterials.js"

class PostAssignments extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      display: "hide_members"
    };
    this.toggleDisplay = this.toggleDisplay.bind(this);
  }

  toggleDisplay(){
    if (this.state.display === "hide_members") {
      this.setState({
        display: "materials_form"
      })
    } else {
      this.setState({
        display: "hide_members"
      })
    }

  }

  render () {
    return (
      <React.Fragment>
        <TogglePostMaterials onClick={this.toggleDisplay} toggleButton="Start Assigning Tasks"/>
        <div class={this.state.display} >
          <form class="new_assignment" id="new_assignment" action="/assignments" accept-charset="UTF-8" data-remote="true" method="post">

          <input name="utf8" type="hidden" value="&#x2713;" />
          <p> Who is responsible for completing this part of the project?</p>
          <input value={this.props.project_id} type="hidden" name="assignment[project_id]" id="assignment_project_id" />
          <InputAssignments userInfo={this.props.userInfo} />
          <p>
            When is this portion of the project due?
            <input type="datetime-local" name="assignment[assignment_deadline]" id="assignment_assignment_deadline" />
          </p>

          <p>
            Describe the assignment and it's responsibilities.
            <textarea name="assignment[assignment_description]" id="assignment_assignment_description" cols="30X10">
            </textarea>
          </p>

          <input type="submit" name="commit" value="Assign this task" data-disable-with="Assign this task" />
        </form>
        </div>
      </React.Fragment>
    );
  }
}

export default PostAssignments

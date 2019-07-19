import React from "react"
import PropTypes from "prop-types"
export class Assignments extends React.Component {
  render () {
    const description = this.props.description
    const assignments = description.map(assignment =>{
      return (
        <React.Fragment>
          <p className="assignment_display">{assignment[0]}</p>
          <p>Due for completion by: {assignment[1]}</p>
        </React.Fragment>
      );
    })

    return <div>{assignments}</div>;

  }
}

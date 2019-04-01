import React from "react"
import PropTypes from "prop-types"
export class Assignments extends React.Component {
  render () {
    const description = this.props.description
    const assignments = description.map(assignment =>{
      return (
        <React.Fragment>
          <p>Responsible for:</p>
          <p>{assignment}</p>
          <p>Due for completion by: {this.props.deadline}</p>
        </React.Fragment>
      );
    })

    return <div>{assignments}</div>;

  }
}
import React from "react"
import PropTypes from "prop-types"
import {Assignments} from "./Assignments.js"
class TeamMember extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div className="team_members">
          <p>{this.props.first_name} {this.props.last_name}</p>
          <Assignments description ={this.props.description} deadline ={this.props.deadline} className="team_members" />
        </div>
      </React.Fragment>
    );
  }
}

export default TeamMember
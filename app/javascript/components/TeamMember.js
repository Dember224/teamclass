import React from "react"
import PropTypes from "prop-types"
import {Assignments} from "./Assignments.js"
import {Materials} from "./Materials.js"
import {MemberDisplay} from "./MemberDisplay.js"

class TeamMember extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      display: "hide_members"
    };
    this.toggleDisplay = this.toggleDisplay.bind(this);
  }

toggleDisplay(){
  if (this.state.display === "hide_members"){
    this.setState({
      display: "team_members"
    })
  }
  else{
    this.setState({
      display: "hide_members"
    })
  }
}
//change the className propertys to this.state.display

  render () {
    return (
      <React.Fragment>
        <div>
          <MemberDisplay first_name={this.props.first_name} last_name={this.props.last_name} onClick={this.toggleDisplay}/>
          <div className={this.state.display}>
            <p>Responsibilities include:</p>
            <Assignments description ={this.props.description} deadline ={this.props.deadline} className="team_members" />
            <p>Responsible for the following materials:</p>
            <Materials material={this.props.material} />
          </div>
        </div>

      </React.Fragment>
    );
  }
}

export default TeamMember

import React from "react"
import PropTypes from "prop-types"
export class MemberDisplay extends React.Component {
  handleChange(e){
    const showMember = e.target.value
    this.props.onClick(showMember)
  }
  render () {
    return (
      <React.Fragment>
        <div className="member_button" onClick={this.props.onClick}>{this.props.first_name}{this.props.last_name}</div>
      </React.Fragment>
    );
  }
}

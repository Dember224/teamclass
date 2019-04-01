import React from "react"
import PropTypes from "prop-types"
export class Materials extends React.Component {
  render () {
    return (
      <React.Fragment>
        {this.props.material}
      </React.Fragment>
    );
  }
}

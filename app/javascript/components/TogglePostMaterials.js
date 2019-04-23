import React from "react"
import PropTypes from "prop-types"
export class TogglePostMaterials extends React.Component {
  handleChange(e){
    const showMaterial = e.target.value
    this.props.onClick(showMaterial)
  }
  render () {
    return (
      <React.Fragment>
        <div className="project_links" onClick={this.props.onClick}>{this.props.toggleButton}</div>
      </React.Fragment>
    );
  }
}

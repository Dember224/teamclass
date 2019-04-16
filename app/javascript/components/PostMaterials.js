import React from "react"
import PropTypes from "prop-types"
import {InputMaterials} from "./InputMaterials.js"
import {TogglePostMaterials} from "./TogglePostMaterials.js"


export class PostMaterials extends React.Component {

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
        <TogglePostMaterials onClick={this.toggleDisplay}/ >
        <div className={this.state.display}>
          <form className="new_material" id="new_material" action="/materials" accept-charset="UTF-8" data-remote="true" method="post">
          <input name="utf8" type="hidden" value="&#x2713;" />
          <input value={this.props.project_id} type="hidden" name="material[project_id]" id="material_project_id" />
          <p>Name of the material</p>
          <input type="text" name="material[material_name]" id="material_material_name" />
          <p>Material's purpose</p>
          <input type="text" name="material[material_purpose]" id="material_material_purpose" />
          <p>Cost associated with getting this material (if no cost enter 0)</p>
          <input step="any" type="number" name="material[cost]" id="material_cost" />$

          <p>Team Member responsible for acquiring material</p>
            <InputMaterials userInfo={this.props.userInfo} />

          <input type="submit" name="commit" value="Add this material" data-disable-with="Add this material" />
        </form>
        </div>

      </React.Fragment>
    );
  }
}

export default PostMaterials

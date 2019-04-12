import React from "react"
import PropTypes from "prop-types"
export class InputMaterials extends React.Component {
  render () {
    const userInfo = this.props.userInfo
    const inputFields = userInfo.map(info =>{
      return(
      <div>
        {info[0]} {info[1]}
        <input type="radio" value={info[2]} name="material[user_id]" id="material_user_id_" />
      </div>
    )
    })
    return (
      <React.Fragment>
        {inputFields}
      </React.Fragment>
    );
  }
}

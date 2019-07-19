import React from "react"
import PropTypes from "prop-types"
export class ListAllMaterials extends React.Component {
  render () {
    const allMaterials = this.props.materials
    const materialsList = allMaterials.map(material =>{
      return(
            <li key={material.id}>
              <div className="material_name">{material[1]}</ div>
              <div className="material_cost">{material[2]}</ div>
              <div>{material[0]}</div>
            </li>

      )
    });

    return (

        <div className="material_list">
          <h1>Materials List:</h1>
          <ol>
            {materialsList}
          </ol>
        </div>
    );
  }
}

export default ListAllMaterials

import React from 'react';
import ReactDom from 'react-dom'

export class NavLinks extends React.Component {
  render(){
    const links = ["teams", "team_members", "projects", "logout" ]
    const pageLinks = links.map(page =>{
      return(
        <div className="navbar">
          <a href={'/' + page}>
            {page}
          </a>
        </div>
      )
    });

    return <nav>{pageLinks}</nav>;
  }
}

document.addEventListener('DOMContentLoaded', () =>{
  ReactDom.render(
  	<NavLinks />,
  	document.body.appendChild(document.createElement('div')),
  )
})

import React, { Component } from 'react'
import PropTypes from 'prop-types'
export class Todoitem extends Component {

   getStyle=()=>{
     if(this.props.todo.completed){
      return {
        textDecoration: 'line-through',   
      }
    } 
   }
   
   
  render() {
    const { id,title,tags} = this.props.todo
    return (
      <div style={this.getStyle()}>
        <p>
            <input type="checkbox"onChange={this.props.Complete.bind(this,id)}/>
            <button style={btnStyle} onClick={this.props.delTodo.bind(this,id)}>X</button>
  
        {title}
        </p>
      </div>
    )
  }
}

Todoitem.propTypes = {
    // todo: PropTypes.object.isRequired
    todos:PropTypes.array.isRequired,
    markComplete:PropTypes.func.isRequired,
    delTodo:PropTypes.func.isRequired,
}

const btnStyle  = {
    background:'ff0000',
    color:'#fff',
    border:'none',
    padding:'5px 9px',
    borderRadius:'50%',
    cursor:'pointer',
    float:'right'
}


export default Todoitem

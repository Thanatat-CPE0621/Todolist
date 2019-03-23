import React, { Component } from 'react';
import TodoItem from './Todoitem';

class Todos extends Component {
 
  render() {
    
    return this.props.todos.map(todo => (
        <TodoItem key={todo.id}todo={todo} Complete={this.props.Complete} delTodo={this.props.delTodo} />
    )) 
  }
 
}

export default Todos;

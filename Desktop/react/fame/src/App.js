import React, { Component } from 'react';
import { BrowserRouter as Router,Route,Link } from 'react-router-dom';
import Todos from './component/Todos';
import Header from './component/layout/Header';
import './App.css';
import AddTodo from './component/AddTodo'
import About  from './component/pages/about';
import uuid from 'uuid';
import Axios from 'axios';
class App extends Component {
  constructor(){
    super()
   
}

Complete = (id) => {
  this.setState({
    todos:this.state.todos.map(todo=> {
      if(todo.id === id){
        todo.completed = !todo.completed
      }
      return todo
    })
  })

}
 state = {
    todos: [
    ]
  }
    componentDidMount(){
      Axios.get('https://jsonplaceholder.typicode.com/todos?_linit=10').then(res => this.setState({ todos:res.data}))
    }

delTodo = (id)=> {
  Axios.delete('https://jsonplaceholder.typicode.com/todos/${id}').then(res => this.setState({
    todos:[...this.state.todos.filter(todo =>  todo.id !== id )]
  }))

}

addTodo = (title) => {
  Axios.post('https://jsonplaceholder.typicode.com/todos',{
    title,
    completed:false
  })
    .then(res => this.setState({ todos:
    [...this.state.todos,res.data]}));
  // const newTodo = {
  //     id:4,
  //     title,
  //     completed:false
  // }
  // this.setState({
  //     todos:[...this.state.todos,newTodo]
  // })
}

  render() {
    return(
      <Router>
        
      <div>
       <div className="container">
        <Header />
        <Route exact path="/" render={props => (
          <React.Fragment>
              <AddTodo  addTodo={this.addTodo}/>
        <Todos todos={this.state.todos} Complete={this.Complete} delTodo={this.delTodo} />
     
          </React.Fragment>
        )} />
        <Route path="/about" component={About} />
       </div>
      </div>
      </Router>
    )
  
  }
  
}

export default App;

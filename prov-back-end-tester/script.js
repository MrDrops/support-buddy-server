
async function fetchActivity() {
  let url = 'http://localhost:3000/activities'
  let response = await fetch(url)
  let body = await response.json();
  //console.log(body);
  let display = document.getElementById("get-display");
  display.innerHTML = JSON.stringify(body);
}

function addActivity() {
  let url = 'http://localhost:3000/activities'
  const category = document.getElementById('category').value;
  const activity = document.getElementById('activity').value;
  const age = document.getElementById('age').value;
  //const mobility = document.getElementById('mobility').value;
  const friends = document.getElementById('friends').value;
  const equipment = document.getElementById('equipment').value;
  const location = document.getElementById('location').value;
  const time = document.getElementById('time').value;
  const info = document.getElementById('info').value;

  let data = {
    category : category,
    activity : activity,
    age: age,
    //mobility: mobility,
    friends: friends,
    equipment: equipment,
    location: location,
    time: time,
    info: info
  };

  let reqOptions = {
    method: 'POST',
    body: JSON.stringify(data),
    headers: {"Content-type": "application/json"}
  }

  fetch(url, reqOptions
    ).then(response => {
    console.log('activity created', response)
    //window.location.replace("index.html")

  })
}

// -------------------------------------------------------

async function fetchCommitment() {
  let url = 'http://localhost:3000/commitments'
  let response = await fetch(url)
  let body = await response.json();
  //console.log(body);
  let display = document.getElementById("get-display");
  display.innerHTML = JSON.stringify(body);
}

function addCommitment() {
  let url = 'http://localhost:3000/commitments'
  const user_id = document.getElementById('user_id').value;
  const activity_id = document.getElementById('activity_id').value;
  const commit_time = document.getElementById('commit_time').value;
  const completion = document.getElementById('completion').value;
  const journal = document.getElementById('journal').value;

  let data = {
    user_id: user_id,
    activity_id: activity_id,
    commit_time: commit_time,
    completion: completion,
    journal: journal
  };

  let reqOptions = {
    method: 'POST',
    body: JSON.stringify(data),
    headers: {"Content-type": "application/json"}
  }

  fetch(url, reqOptions
    ).then(response => {
    console.log('activity created', response)
  })
}

// ----------------------------------------------------


function testclick() {
  console.log('you clicked');
}

// ----------------------------------

function loginclick() {
  let url = 'http://localhost:3000/login'
  const email = document.getElementById('email').value;
  const password = document.getElementById('password').value;


  let data = {
    email : email,
    password : password,
  };

  let reqOptions = {
    method: 'POST',
    body: JSON.stringify(data),
    headers: {"Content-type": "application/json"}
  }

  fetch(url, reqOptions
    ).then(response => {
    console.log('logged in', response)
    //window.location.replace("index.html")

  })
}

// --------------------------------

function signupclick() {
  let url = 'http://localhost:3000/users/new'
  const name = document.getElementById('name').value;
  const email = document.getElementById('email').value;
  const password = document.getElementById('password').value;
  const password_confirmation = document.getElementById('password_confirmation').value;


  let data = {
    name: name,
    email: email,
    password: password,
    password_confirmation: password_confirmation
  };

  let reqOptions = {
    method: 'POST',
    body: JSON.stringify(data),
    headers: {"Content-type": "application/json"}
  }

  fetch(url, reqOptions
    ).then(response => {
    console.log('signed ip', response)
    //window.location.replace("index.html")

  })
}

// --------------------------

function likeclick() {
  let url = 'http://localhost:3000/likes'
  const activity_id = document.getElementById('activity_id').value;
  const user_id = document.getElementById('user_id').value;
  const liked = document.getElementById('liked').value;


  let data = {
    activity_id: activity_id,
    user_id: user_id,
    liked: liked
  };

  let reqOptions = {
    method: 'POST',
    body: JSON.stringify(data),
    headers: {"Content-type": "application/json"}
  }

  fetch(url, reqOptions
    ).then(response => {
    console.log('added like', response)
    //window.location.replace("index.html")

  })
}

async function fetchLikes() {
  let url = 'http://localhost:3000/likes'
  let response = await fetch(url)
  let body = await response.json();
  //console.log(body);
  let display = document.getElementById("get-display");
  display.innerHTML = JSON.stringify(body);
}
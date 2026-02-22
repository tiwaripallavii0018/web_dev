function placeOrder(orderId, delay) {
  return new Promise((resolve) => {
    setTimeout(() => resolve(orderId), delay);
  });
}

function assignOrder(orderId, delay) {
  return new Promise((resolve) => {
    setTimeout(() => resolve(orderId), delay);
  });
}

function pickupOrder(orderId, delay) {
  return new Promise((resolve) => {
    setTimeout(() => resolve(orderId), delay);
  });
}

function deliverOrder(orderId, delay) {
  return new Promise((resolve) => {
    setTimeout(() => resolve(orderId), delay);
  });
}

placeOrder(12212, 1000)
  .then((orderId) => {
    console.log(`Order ${orderId} Confirmed`);
    return assignOrder(orderId, 2000);
  })
  .then((orderId) => {
    console.log(`Order ${orderId} Rider assigned`);
    return pickupOrder(orderId, 2000);
  })
  .then((orderId) => {
    console.log(`Order ${orderId} On the Way`);
    return deliverOrder(orderId, 2000);
  })
  .then((orderId) => {
    console.log(`Order ${orderId} Delivered`);
  })
  .catch((err) => {
    console.log("Error:", err);
  })
  .finally(() => {
    console.log("All Done");
  });

// placeOrder(12212, 1000)
//   .then(() => {
//     console.log("Order Confirmed");
//     return assignOrder(12213, 2000);
//   })
//   .then(() => {
//     console.log("Rider assigned");
//     return pickupOrder(12214, 2000);
//   })
//   .then(() => {
//     console.log("On the Way");
//     return deliverOrder(12213, 2000);
//   })
//   .then(()=>{
//     console.log("Delivered");
//     //return Order(12512,3000);
//   })
//   .catch((err) => {
//     console.log("Error:", err);
//   })
//   .finally(() => {
//     console.log("All Done");
 // });



//   function Order(ID, delay) {
//   return new Promise((resolve) => {
//     setTimeout(() => {
//       console.log("Showing delivery tracking" );
//       resolve(ID);
//     }, delay);
//   });
// }

// async function Order() {
//   try {
//     await Order(12212, 1000);
//     console.log("Order Confirmed");

//     await Order(12213, 2000);
//     console.log("Rider Assigned");

//     await Order(12214, 2000);
//     console.log("On the Way");

//     await Order(12215, 3000);
//     console.log("Delivered");
//   } catch (err) {
//     console.log("Error:", err);
//   } finally {
//     console.log("All DOne");
//   }
// }
// Order();
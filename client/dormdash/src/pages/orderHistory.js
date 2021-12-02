import './main.css';
import * as React from "react";


const orderHistory = () => {
  return (
  <div>
    <head>
      <style>
        <link href = "https://fonts.googleapis.com/icon?family=Material+Icons" rel = "stylesheet">
        </link>
      </style>
    </head>

    <div class = "banner">
      <div class = "banner__content">
        <div class = "banner__text">
          DormDash
        </div>
      </div>
    </div>

    <body>
      <div class = "dormdash-menu-buttons">
        <a href = "./welcome">
          <button type = "button" class = "icon-button">
            <span class = "material-icons md-48">
              home
            </span>
          </button>
        </a>
        <a href = "./login">
          <button type = "button" class = "icon-button">
            <span class = "material-icons md-48">
              logout
            </span>
          </button>
        </a>
        <a herf = "./customer">
          <button type = "button" class = "icon-button">
            <span class = "material-icons md-48">
              account_circle
            </span>
          </button>
        </a>
        <div>
          <a href = "./shoppingCart">
            <button type = "button" class = "icon-button">
              <span class = "material-icons md-48">
                shopping_cart
              </span>
              <span class = "icon-button__badge">
                0
              </span>
            </button>
          </a>
        </div>
      </div>

      <div class = "extra-customer-buttons">
        <a href = "./paymentInformation">
          <button type = "button" class = "icon-button">
            <span class = "material-icons md-48">
              credit_card
            </span>
          </button>
        </a>
        <a href = "./orderHistory">
          <button type = "button" class = "icon-button">
            <span class = "material-icons md-48">
              history
            </span>
          </button>
        </a>
      </div>

      <div class = "complete-history">
        <div class = "order-history-container">
          <div class = "order-history">
            <h1 class = "order-history-group-heading">
              Order 11/30/2021 20:00:23 EST
              <span class = "completed-icon">
                <span class = "material-icons">
                  check_circle
                </span>
              </span>
            </h1>
            <h2 class = "order-history-group-status-subheading">
              Completed
            </h2>
            <h2 class = "order-history-group-location-subheading">
              Holy Grounds @ CEER
            </h2>
          </div>
          <table class = "order-history-table">
            <tr>
              <th class = "order-history-header">Item</th>
              <th class = "order-history-header">Quantity</th>
              <th class = "order-history-header">Unit Price</th>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
          </table>
          <div class = "delivery-metadata">
            <div class = "order-history-total-cost">
              <h3>
                Total: $64.50
              </h3>
            </div>
            <div class = "order-history-payment-method">
              <h3>
                Paid with: Online Vendor Venmo customer@website.com
              </h3>
            </div>
            <div class = "order-history-delivery-time">
              <h3>
                Scheduled for: 20:15:00 EST
              </h3>
            </div>
            <div class = "order-history-delivery-method">
              <h3>
                Delivery type: Pick up
              </h3>
            </div>
          </div>
        </div>

        <div class = "order-history-container">
          <div class = "order-history">
            <h1 class = "order-history-group-heading">
              Order 11/30/2021 19:45:00 EST
              <span class = "in-progress-icon">
                <span class = "material-icons">
                  check_circle
                </span>
              </span>
            </h1>
            <h2 class = "order-history-group-status-subheading">
              In Progress
            </h2>
            <h2 class = "order-history-group-location-subheading">
              Holy Grounds @ CEER
            </h2>
          </div>
          <table class = "order-history-table">
            <tr>
              <th class = "order-history-header">Item</th>
              <th class = "order-history-header">Quantity</th>
              <th class = "order-history-header">Unit Price</th>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
          </table>
          <div class = "delivery-metadata">
            <div class = "order-history-total-cost">
              <h3>
                Total: $64.50
              </h3>
            </div>
            <div class = "order-history-payment-method">
              <h3>
                Paid with: Credit Card ending in 4284
              </h3>
            </div>
            <div class = "order-history-delivery-time">
              <h3>
                Scheduled for: 20:15:00 EST
              </h3>
            </div>
            <div class = "order-history-delivery-method">
              <h3>
                Delivery type: Pick up
              </h3>
            </div>
          </div>
        </div>

        <div class = "order-history-container">
          <div class = "order-history">
            <h1 class = "order-history-group-heading">
              Order 11/30/2021 19:30:00 EST
              <span class = "cancelled-icon">
                <span class = "material-icons">
                  cancel
                </span>
              </span>
            </h1>
            <h2 class = "order-history-group-status-subheading">
              Cancelled
            </h2>
            <h2 class = "order-history-group-location-subheading">
              Holy Grounds @ CEER
            </h2>
          </div>
          <table class = "order-history-table">
            <tr>
              <th class = "order-history-header">Item</th>
              <th class = "order-history-header">Quantity</th>
              <th class = "order-history-header">Unit Price</th>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
            <tr>
              <td class = "order-history-row">Bruschetta</td>
              <td class = "order-history-row">1</td>
              <td class = "order-history-row">$12.90</td>
            </tr>
          </table>
          <div class = "delivery-metadata">
            <div class = "order-history-total-cost">
              <h3>
                Total: $64.50
              </h3>
            </div>
          </div>
        </div>
      </div>
    </body>
  </div>
  )
};

export default orderHistory
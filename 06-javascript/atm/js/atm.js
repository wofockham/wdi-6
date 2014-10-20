var accounts = {
  checking: {
    balance: 0,
    deposit: function (amount) {
      if (amount > 0) {
        accounts.checking.balance += amount;
      }
    },
    withdraw: function (amount) {
      if (amount <= accounts.checking.balance) {
        accounts.checking.balance -= amount;
      }
    }
  },

  savings: {
    balance: 0,
    deposit: function (amount) {},
    withdraw: function (amount) {}
  }
};

var ATM;

$(document).ready(function () {
  ATM = {
    ui: {
      $checkingDeposit: $('#checkingDeposit'),
      $checkingWithdrawal: $('#checkingWithdraw'),
      $checkingAmount: $('#checkingAmount'),
      $checkingBalance: $('#balance1'),
      $checkingAccount: $('#checkingAccount')
    },
    updateChecking: function () {
      ATM.ui.$checkingBalance.text( '$' + accounts.checking.balance );
      ATM.ui.$checkingAmount.val('');

      if (accounts.checking.balance === 0) {
        ATM.ui.$checkingAccount.addClass('zero');
      } else {
        ATM.ui.$checkingAccount.removeClass('zero');
      }
    }
  };

  ATM.ui.$checkingDeposit.on('click', function () {
    var amount = parseInt(ATM.ui.$checkingAmount.val());
    accounts.checking.deposit(amount);
    ATM.updateChecking();
  });

  ATM.ui.$checkingWithdrawal.on('click', function () {
    var amount = parseInt(ATM.ui.$checkingAmount.val());
    accounts.checking.withdraw(amount);
    ATM.updateChecking();
  });

  ATM.updateChecking();
});

//Logout
document.addEventListener("DOMContentLoaded", function () {
    var logoutButton = document.getElementById("logoutButton");

    if (logoutButton) {
        logoutButton.addEventListener("click", function (event) {
            event.preventDefault();
            var confirmation = confirm("Are you sure you want to logout?");
            if (confirmation) {
                window.location.href = logoutButton.getAttribute("href");
            }
        });
    }
});


// Investment Calculator
document.getElementById("investmentForm").addEventListener("submit", function(event) {
    event.preventDefault();

    let initialAmount = parseFloat(document.getElementById("initialAmount").value);
    let monthlyInvestment = parseFloat(document.getElementById("monthlyInvestment").value);
    let investmentType = document.getElementById("investmentType").value;

    if (isNaN(initialAmount) || isNaN(monthlyInvestment)) {
        alert("Please enter valid numeric values for initial amount and monthly investment.");
        return;
    }

    let investmentValues = calculateInvestment(initialAmount, monthlyInvestment, investmentType);

    displayResults(investmentValues);
});

function calculateInvestment(initialAmount, monthlyInvestment, investmentType) {
    let investmentReturns = {
        'BasicSavingsPlan': {'1_year': 0.024, '5_years': 0.048, '10_years': 0.096},
        'SavingsPlanPlus': {'1_year': 0.055, '5_years': 0.083, '10_years': 0.11},
        'ManagedStockInvestments': {'1_year': 0.23, '5_years': 0.04, '10_years': 0.15}
    };

    let fees = {
        'BasicSavingsPlan': {'1_year': 25, '5_years': 50, '10_years': 100},
        'SavingsPlanPlus': {'1_year': 30, '5_years': 30, '10_years': 30},
        'ManagedStockInvestments': {'1_year': 130, '5_years': 130, '10_years': 130}
    };

    let taxes = {
        'BasicSavingsPlan': {'1_year': 0, '5_years': 0, '10_years': 0},
        'SavingsPlanPlus': {'1_year': 120, '5_years': 120, '10_years': 120},
        'ManagedStockInvestments': {'1_year': 120, '5_years': 200, '10_years': 200}
    };

    let investmentValues = {};
    for (let timeframe in investmentReturns[investmentType]) {
        let totalInvestment = initialAmount + (monthlyInvestment * 12 * parseInt(timeframe));
        let returns = totalInvestment * investmentReturns[investmentType][timeframe];
        let totalFees = fees[investmentType][timeframe];
        let totalTaxes = taxes[investmentType][timeframe];
        let totalProfit = returns - totalFees - totalTaxes;

        investmentValues[timeframe] = {
            'totalInvestment': totalInvestment.toFixed(2),
            'returns': returns.toFixed(2),
            'totalProfit': totalProfit.toFixed(2),
            'totalFees': totalFees.toFixed(2),
            'totalTaxes': totalTaxes.toFixed(2)
        };
    }

    return investmentValues;
}

function displayResults(investmentValues) {
    let resultsContainer = document.getElementById("resultsContainer");
    resultsContainer.innerHTML = "";

    for (let timeframe in investmentValues) {
        let div = document.createElement("div");
		div.innerHTML = `<h4>${timeframe.replace('_', ' ').toUpperCase()}</h4>`;
        div.innerHTML += `<p>Total Investment: &pound;${investmentValues[timeframe].totalInvestment}</p>`;
        div.innerHTML += `<p>Returns: &pound;${investmentValues[timeframe].returns}</p>`;
        div.innerHTML += `<p>Total Profit: &pound;${investmentValues[timeframe].totalProfit}</p>`;
        div.innerHTML += `<p>Total Fees: &pound;${investmentValues[timeframe].totalFees}</p>`;
        div.innerHTML += `<p>Total Taxes: &pound;${investmentValues[timeframe].totalTaxes}</p>`;

        resultsContainer.appendChild(div);
    }

    document.getElementById("investmentResults").classList.remove("hidden");
}


//Currency Converter
function convertCurrency() {
    const fromCurrency = document.getElementById("fromCurrency").value;
    const toCurrency = document.getElementById("toCurrency").value;
    const amount = parseFloat(document.getElementById("amount").value);

    const exchangeRate = getExchangeRate(fromCurrency, toCurrency);
    const convertedAmount = amount * exchangeRate;

    document.getElementById("result").innerText = `${amount} ${fromCurrency} = ${convertedAmount.toFixed(2)} ${toCurrency}`;
}

function getExchangeRate(fromCurrency, toCurrency) {
  
    const exchangeRates = {
        GBP: { USD: 1.38, EUR: 1.16, BRL: 7.66, JPY: 152.36, TRY: 14.72 },
        USD: { GBP: 0.72, EUR: 0.84, BRL: 5.26, JPY: 104.74, TRY: 10.15 },
        EUR: { GBP: 0.86, USD: 1.19, BRL: 6.25, JPY: 125.16, TRY: 12.11 },
        BRL: { GBP: 0.13, USD: 0.19, EUR: 0.16, JPY: 19.87, TRY: 1.92 },
        JPY: { GBP: 0.0066, USD: 0.0095, EUR: 0.008, BRL: 0.0503, TRY: 0.097 },
        TRY: { GBP: 0.068, USD: 0.098, EUR: 0.082, BRL: 0.52, JPY: 10.33 }
    };

    return exchangeRates[fromCurrency][toCurrency] || 1;
}

// Forgot Password
function resetPassword() {

    document.getElementById("resetMessage").innerText = "Password reset successful!";
}


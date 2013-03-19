<%--
  Created by IntelliJ IDEA.
  User: Scavenger
  Date: 17.02.13
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Заказ такси</title>
    <meta name="layout" content="main">
</head>
<body>
<div style="text-align: center; width: 100%; margin-top: 50px;">
    <h3>Заказ такси</h3>
    <form class="ride">
        <fieldset class="address-set">
            <legend>Откуда</legend>
            <p>
                <tx:labelInput name="street_from" inputType="text" inputClass="street">Улица:</tx:labelInput>
            </p>
            <p>
                <tx:labelInput name="house_from" inputType="text">Дом:</tx:labelInput>
            </p>
            <p>
                <tx:labelInput name="entrance_from" inputType="text">Подъезд:</tx:labelInput>
            </p>
        </fieldset>
        <span style="font-size: large;"> =&gt; </span>
        <fieldset class="address-set">
            <legend>Куда</legend>
            <p>
                <tx:labelInput name="street_to" inputType="text" inputClass="street">Улица:</tx:labelInput>
            </p>
            <p>
                <tx:labelInput name="house_to" inputType="text">Дом:</tx:labelInput>
            </p>
            <p>
                <tx:labelInput name="entrance_to" inputType="text">Подъезд:</tx:labelInput>
            </p>
        </fieldset>
        <p><button class="search">Показать варианты</button></p>
    </form>
    <g:if test="${offerings && !offerings.empty}">
    <div style="margin-top: 25px;">
        <p>Варианты заказа из <span class="address">${fromAddress}</span> в <span class="address">${toAddress}</span>:</p>
        <table class="offers">
            <thead>
                <tr>
                    <th></th>
                    <th>Компания</th>
                    <th>Цена</th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${offerings}" var="offer" status="index">
                <tr>
                    <th>${index + 1}</th>
                    <td><g:link controller="home" action="order" params="[offerId: offer.id]">${offer.company}</g:link></td>
                    <td>${offer.price}</td>
                </tr>
                </g:each>
            </tbody>
        </table>
    </div>
    </g:if>
</div>
</body>
</html>
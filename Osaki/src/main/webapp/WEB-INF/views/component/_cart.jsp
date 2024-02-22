<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="comment" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!-- Oder -->
<div class="details">
    <div class="recentOrders" style="width: 900px">
        <h1>Đơn hàng</h1>
        <div class="row">
            <div class="col l-8 m-12 s-12">
                <div class="main__cart">
                    <div class="row title">
                        <div class="col l-4 m-4 s-8">Ma don hang</div>
                        <div class="col l-2 m-2 s-0">Tong tien</div>
                        <div class="col l-2 m-2 s-0">Ngay dat</div>
                        <div class="col l-2 m-2 s-0">Trang thái</div>
                        <div class="col l-1 m-1 s-0"></div>
                    </div>
                    <c:forEach var="invoiceList" items="${invoiceList}">
                        <c:if test="${invoiceList.status == 'Đặt hàng'}">
                            <div class="row item ${invoiceList.invoiceID}">
                                <div class="col l-4 m-4 s-8">
                                    <div class="main__cart-product">
                                        <div class="name">${invoiceList.invoiceID} </div>
                                    </div>
                                </div>
                                <div class="col l-2 m-2 s-0">
                                    <div class="main__cart-product">
                                        <div class="name">${invoiceList.totalAmount} </div>
                                    </div>
                                </div>
                                <div class="col l-2 m-2 s-0">
                                    <div class="main__cart-product">
                                        <div class="name">${invoiceList.createAt} </div>
                                    </div>
                                </div>
                                <div class="col l-2 m-2 s-0">
                                    <div class="main__cart-product">
                                        <div class="name">${invoiceList.status} </div>
                                    </div>
                                </div>
                                <div class="col l-1 m-1 s-0">
                                    <div class="cancelCart${invoiceList.invoiceID}">
                                        <h2 class="main__cart-icon cancelCart"
                                            data-invoice-id="${invoiceList.invoiceID}"
                                        >
                                            Huy đơn hàng
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/js/cancelCart.js"></script>
<!-- Chart -->
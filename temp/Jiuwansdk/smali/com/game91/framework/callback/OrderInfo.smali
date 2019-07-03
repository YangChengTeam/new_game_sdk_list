.class public Lcom/game91/framework/callback/OrderInfo;
.super Ljava/lang/Object;
.source "OrderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/callback/OrderInfo$OrderStateType;
    }
.end annotation


# static fields
.field public static final ORDER_STATE_PAY_FAILED:I = 0x3

.field public static final ORDER_STATE_PAY_SUCCESS:I = 0x2

.field public static final ORDER_STATE_USER_CANCEL:I = 0x1

.field public static final ORDER_STATE_WAIT_SERVER_NOTIFY:I


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private orderPrice:Ljava/lang/String;

.field private orderState:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "orderState"    # I
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "orderPrice"    # Ljava/lang/String;
    .param p4, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/game91/framework/callback/OrderInfo;->orderState:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/OrderInfo;->orderId:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/OrderInfo;->orderPrice:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/OrderInfo;->errorMessage:Ljava/lang/String;

    .line 36
    iput p1, p0, Lcom/game91/framework/callback/OrderInfo;->orderState:I

    .line 37
    iput-object p2, p0, Lcom/game91/framework/callback/OrderInfo;->orderId:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/game91/framework/callback/OrderInfo;->orderPrice:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/game91/framework/callback/OrderInfo;->errorMessage:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/game91/framework/callback/OrderInfo;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/game91/framework/callback/OrderInfo;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/game91/framework/callback/OrderInfo;->orderPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderState()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/game91/framework/callback/OrderInfo;->orderState:I

    return v0
.end method

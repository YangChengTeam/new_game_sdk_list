.class public Lcom/game91/framework/http/PayBean;
.super Lcom/game91/framework/http/JsonBean;
.source "PayBean.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/game91/framework/http/JsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotifyUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/game91/framework/http/PayBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "notifyUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/game91/framework/http/PayBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "oid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public needSwitchPay()Z
    .locals 2

    .prologue
    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/game91/framework/http/PayBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "switchPay"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 24
    :goto_0
    return v0

    .line 21
    :catch_0
    move-exception v0

    .line 24
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 19
    :catch_1
    move-exception v0

    goto :goto_1
.end method

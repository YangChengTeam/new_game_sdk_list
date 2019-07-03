.class public Lcom/game/sdk/engin/PayValidateEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "PayValidateEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/PointMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public orderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/game/sdk/engin/PayValidateEngin;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/game/sdk/engin/PayValidateEngin;->orderId:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->PAY_VALIDATE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Lcom/game/sdk/domain/PayValidateResult;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 35
    new-instance v2, Lcom/game/sdk/domain/PayValidateResult;

    invoke-direct {v2}, Lcom/game/sdk/domain/PayValidateResult;-><init>()V

    .line 37
    .local v2, "payValidateResult":Lcom/game/sdk/domain/PayValidateResult;
    const/4 v3, 0x0

    .line 39
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PointMessage;>;"
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "order_sn"

    iget-object v5, p0, Lcom/game/sdk/engin/PayValidateEngin;->orderId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/PointMessage;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/PayValidateEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 43
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v6, :cond_1

    .line 44
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/game/sdk/domain/PayValidateResult;->result:Z

    .line 45
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/PointMessage;

    iget-object v4, v4, Lcom/game/sdk/domain/PointMessage;->pointMessage:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/PointMessage;

    iget-object v4, v4, Lcom/game/sdk/domain/PointMessage;->pointMessage:Ljava/lang/String;

    :goto_0
    iput-object v4, v2, Lcom/game/sdk/domain/PayValidateResult;->pointMessage:Ljava/lang/String;

    .line 53
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .line 45
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 47
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/game/sdk/domain/PayValidateResult;->result:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 49
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v7, v2, Lcom/game/sdk/domain/PayValidateResult;->result:Z

    goto :goto_1
.end method

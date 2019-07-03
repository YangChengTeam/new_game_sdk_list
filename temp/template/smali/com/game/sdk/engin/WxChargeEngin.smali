.class public Lcom/game/sdk/engin/WxChargeEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "WxChargeEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/PayInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public chargeMoney:D

.field public mContext:Landroid/content/Context;

.field public md5signstr:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field private payRequestParams:Lcom/game/sdk/domain/PayRequestParams;

.field public payType:I

.field public payWay:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/game/sdk/engin/BaseEngin;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/game/sdk/engin/WxChargeEngin;->chargeMoney:D

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "md5signstr"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/game/sdk/engin/BaseEngin;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/game/sdk/engin/WxChargeEngin;->chargeMoney:D

    .line 43
    iput-object p2, p0, Lcom/game/sdk/engin/WxChargeEngin;->orderId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/game/sdk/engin/WxChargeEngin;->md5signstr:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->WX_CONTINUE_PAY_URL:Ljava/lang/String;

    return-object v0
.end method

.method public wxContinuePay()Lcom/game/sdk/domain/PayInfo;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, "payinfo":Lcom/game/sdk/domain/PayInfo;
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "orderid"

    iget-object v6, p0, Lcom/game/sdk/engin/WxChargeEngin;->orderId:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v5, "md5signstr"

    iget-object v6, p0, Lcom/game/sdk/engin/WxChargeEngin;->md5signstr:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v5, 0x1

    const-class v6, Lcom/game/sdk/domain/PayInfo;

    invoke-virtual {p0, v5, v6, v1}, Lcom/game/sdk/engin/WxChargeEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v4

    .line 66
    .local v4, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v5, v7, :cond_0

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5145\u503c\u7ed3\u679c----"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 68
    iget-object v5, v4, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Lcom/game/sdk/domain/PayInfo;

    move-object v2, v0

    .line 70
    iget v5, v4, Lcom/game/sdk/domain/ResultInfo;->code:I

    iput v5, v2, Lcom/game/sdk/domain/PayInfo;->code:I

    .line 71
    iget-object v5, v4, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PayInfo;->errorMsg:Ljava/lang/String;

    .line 80
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    :goto_0
    return-object v2

    .line 73
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    :cond_0
    new-instance v3, Lcom/game/sdk/domain/PayInfo;

    invoke-direct {v3}, Lcom/game/sdk/domain/PayInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .local v3, "payinfo":Lcom/game/sdk/domain/PayInfo;
    :try_start_1
    iget v5, v4, Lcom/game/sdk/domain/ResultInfo;->code:I

    iput v5, v3, Lcom/game/sdk/domain/PayInfo;->code:I

    .line 75
    iget-object v5, v4, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    :goto_1
    iput-object v5, v3, Lcom/game/sdk/domain/PayInfo;->errorMsg:Ljava/lang/String;

    move-object v2, v3

    .line 77
    .end local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    goto :goto_0

    .line 75
    .end local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    :cond_1
    const-string v5, "\u652f\u4ed8\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 77
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .end local v4    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    .restart local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v4    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PayInfo;>;"
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    .restart local v2    # "payinfo":Lcom/game/sdk/domain/PayInfo;
    goto :goto_0
.end method

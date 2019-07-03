.class public Lcom/game/sdk/engin/UnBindPhoneEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "UnBindPhoneEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mobileNumber:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public validateCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "mobileNumber"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/game/sdk/engin/UnBindPhoneEngin;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/game/sdk/engin/UnBindPhoneEngin;->userName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/game/sdk/engin/UnBindPhoneEngin;->mobileNumber:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/game/sdk/engin/UnBindPhoneEngin;->validateCode:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->UNBIND_PHONE_NUMBER_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Lcom/game/sdk/domain/ResultInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "user_name"

    iget-object v3, p0, Lcom/game/sdk/engin/UnBindPhoneEngin;->userName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "mobile"

    iget-object v3, p0, Lcom/game/sdk/engin/UnBindPhoneEngin;->mobileNumber:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v2, "code"

    iget-object v3, p0, Lcom/game/sdk/engin/UnBindPhoneEngin;->validateCode:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lcom/game/sdk/engin/UnBindPhoneEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v2, v4, :cond_0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u89e3\u9664\u7ed1\u5b9a\u7ed3\u679c----"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v2

    goto :goto_0
.end method

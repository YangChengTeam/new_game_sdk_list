.class public Lcom/game/sdk/engin/UpdateMtCodeEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "UpdateMtCodeEngin.java"


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

.field public mtCode:Ljava/lang/String;

.field public mtype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mtype"    # Ljava/lang/String;
    .param p3, "mtCode"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/game/sdk/engin/UpdateMtCodeEngin;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/game/sdk/engin/UpdateMtCodeEngin;->mtype:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/game/sdk/engin/UpdateMtCodeEngin;->mtCode:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->UPDATE_MT_CODE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 36
    const/4 v1, 0x1

    .line 37
    .local v1, "flag":Z
    const/4 v3, 0x0

    .line 39
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "mt"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateMtCodeEngin;->mtype:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v4, "mt_code"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateMtCodeEngin;->mtCode:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v2}, Lcom/game/sdk/engin/UpdateMtCodeEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 44
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v6, :cond_0

    .line 45
    const/4 v1, 0x1

    .line 53
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v1

    .line 47
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 49
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

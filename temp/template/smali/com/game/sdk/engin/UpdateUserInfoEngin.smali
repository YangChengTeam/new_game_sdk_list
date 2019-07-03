.class public Lcom/game/sdk/engin/UpdateUserInfoEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "UpdateUserInfoEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public updateUserInfo:Lcom/game/sdk/domain/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/game/sdk/engin/BaseEngin;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uUserInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 34
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->UPDATE_USER_INFO_URL:Ljava/lang/String;

    return-object v0
.end method

.method public updateUserInfo()Lcom/game/sdk/domain/UpdateInfoResult;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 48
    new-instance v3, Lcom/game/sdk/domain/UpdateInfoResult;

    invoke-direct {v3}, Lcom/game/sdk/domain/UpdateInfoResult;-><init>()V

    .line 51
    .local v3, "updateInfoResult":Lcom/game/sdk/domain/UpdateInfoResult;
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "user_id"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_5

    .line 55
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    const-string v4, "face"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 60
    const-string v4, "nick_name"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->sex:I

    if-lez v4, :cond_2

    .line 64
    const-string v4, "sex"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget v6, v6, Lcom/game/sdk/domain/UserInfo;->sex:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->birth:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 68
    const-string v4, "birth"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->birth:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 72
    const-string v4, "email"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_4
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 76
    const-string v4, "qq"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_5
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/UpdateInfo;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/UpdateUserInfoEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v2

    .line 82
    .local v2, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    if-eqz v2, :cond_7

    iget v4, v2, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v7, :cond_7

    .line 83
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z

    .line 84
    iget-object v4, v2, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/UpdateInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UpdateInfo;->pointMessage:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/UpdateInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UpdateInfo;->pointMessage:Ljava/lang/String;

    :goto_0
    iput-object v4, v3, Lcom/game/sdk/domain/UpdateInfoResult;->pointMessage:Ljava/lang/String;

    .line 85
    const-string v4, "\u4fee\u6539\u7528\u6237\u4fe1\u606f\u6210\u529f!"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 93
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    :goto_1
    return-object v3

    .line 84
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    :cond_6
    const-string v4, ""

    goto :goto_0

    .line 87
    :cond_7
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v8, v3, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z

    goto :goto_1
.end method

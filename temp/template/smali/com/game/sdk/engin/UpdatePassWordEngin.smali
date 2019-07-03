.class public Lcom/game/sdk/engin/UpdatePassWordEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "UpdatePassWordEngin.java"


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
.field public accountType:I

.field public mContext:Landroid/content/Context;

.field public newPassWord:Ljava/lang/String;

.field public oldPassWord:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "oldPassWord"    # Ljava/lang/String;
    .param p4, "newPassWord"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 35
    iput-object p1, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->userName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->oldPassWord:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->newPassWord:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->UPDATE_PASS_WORD_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Lcom/game/sdk/domain/UpdateInfoResult;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 47
    new-instance v3, Lcom/game/sdk/domain/UpdateInfoResult;

    invoke-direct {v3}, Lcom/game/sdk/domain/UpdateInfoResult;-><init>()V

    .line 48
    .local v3, "updateInfoResult":Lcom/game/sdk/domain/UpdateInfoResult;
    const/4 v2, 0x0

    .line 50
    .local v2, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/PointMessage;>;"
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "n"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->userName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v4, "old_pwd"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->oldPassWord:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v4, "new_pwd"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->newPassWord:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/PointMessage;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/UpdatePassWordEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_1

    iget v4, v2, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v6, :cond_1

    .line 57
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z

    .line 58
    iget-object v4, v2, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/PointMessage;

    iget-object v4, v4, Lcom/game/sdk/domain/PointMessage;->pointMessage:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/PointMessage;

    iget-object v4, v4, Lcom/game/sdk/domain/PointMessage;->pointMessage:Ljava/lang/String;

    :goto_0
    iput-object v4, v3, Lcom/game/sdk/domain/UpdateInfoResult;->pointMessage:Ljava/lang/String;

    .line 59
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->newPassWord:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/game/sdk/engin/UpdatePassWordEngin;->saveUserInfo(Ljava/lang/String;)V

    .line 67
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v3

    .line 58
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 61
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v7, v3, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z

    goto :goto_1
.end method

.method public saveUserInfo(Ljava/lang/String;)V
    .locals 8
    .param p1, "newPwd"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 79
    .local v0, "accountName":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    .line 81
    .local v3, "mobileNumber":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 84
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_0

    .line 85
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object p1, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v1

    .line 90
    .local v1, "isExist":Z
    if-nez v1, :cond_4

    .line 91
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 92
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v6, v6, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    iget v7, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 91
    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 102
    :goto_2
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v2

    .line 103
    .local v2, "isExistAccount":Z
    if-nez v2, :cond_5

    .line 104
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 105
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v6, v6, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    iget v7, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 104
    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 114
    :goto_3
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 115
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    invoke-static {v4, v5}, Lcom/game/sdk/utils/AccountInfoUtil;->updateUsersInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 118
    :cond_1
    return-void

    .line 77
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "isExist":Z
    .end local v2    # "isExistAccount":Z
    .end local v3    # "mobileNumber":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto :goto_0

    .line 79
    .restart local v0    # "accountName":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto :goto_1

    .line 95
    .restart local v1    # "isExist":Z
    .restart local v3    # "mobileNumber":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 98
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v6, v6, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    iget v7, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 97
    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    .line 108
    .restart local v2    # "isExistAccount":Z
    :cond_5
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 111
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v6, v6, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    iget v7, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 110
    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3
.end method

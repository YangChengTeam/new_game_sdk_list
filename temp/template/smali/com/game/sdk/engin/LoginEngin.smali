.class public Lcom/game/sdk/engin/LoginEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "LoginEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/QuickLoginInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public accountType:I

.field public loginCount:I

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/engin/LoginEngin;->loginCount:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/engin/LoginEngin;->accountType:I

    .line 36
    iput-object p1, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->LOGIN_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Lcom/game/sdk/domain/LoginResult;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    new-instance v1, Lcom/game/sdk/domain/LoginResult;

    invoke-direct {v1}, Lcom/game/sdk/domain/LoginResult;-><init>()V

    .line 46
    .local v1, "loginResult":Lcom/game/sdk/domain/LoginResult;
    iput-boolean v6, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    .line 48
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "n"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v4, "p"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4, v5, v2}, Lcom/game/sdk/engin/LoginEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 54
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v7, :cond_2

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65e0\u9700\u9a8c\u8bc1\u7801\u767b\u5f55\u7ed3\u679c----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 56
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v4, :cond_0

    .line 57
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 60
    :cond_0
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 61
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/QuickLoginInfo;

    iget v4, v4, Lcom/game/sdk/domain/QuickLoginInfo;->newSdkReg:I

    iput v4, v1, Lcom/game/sdk/domain/LoginResult;->newSdkReg:I

    .line 62
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/QuickLoginInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/QuickLoginInfo;->fixName:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LoginResult;->fixName:Ljava/lang/String;

    .line 63
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/QuickLoginInfo;

    iget v4, v4, Lcom/game/sdk/domain/QuickLoginInfo;->cpNotice:I

    iput v4, v1, Lcom/game/sdk/domain/LoginResult;->cpNotice:I

    .line 67
    :cond_1
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4}, Lcom/game/sdk/engin/LoginEngin;->saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V

    .line 69
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/game/sdk/domain/LoginResult;->result:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 80
    return-object v1

    .line 71
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    .line 72
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 75
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v6, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    goto :goto_0
.end method

.method public saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V
    .locals 7
    .param p1, "quickLoginInfo"    # Lcom/game/sdk/domain/QuickLoginInfo;

    .prologue
    const/4 v6, 0x2

    .line 90
    const-string v0, ""

    .line 92
    .local v0, "accountNumber":Ljava/lang/String;
    sget v2, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    if-ne v2, v6, :cond_1

    .line 93
    const/4 v2, 0x0

    iput v2, p0, Lcom/game/sdk/engin/LoginEngin;->accountType:I

    .line 95
    iget-object v2, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v0, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v2, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userName:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    iget-object v0, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userName:Ljava/lang/String;

    .line 106
    :cond_1
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v0, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 107
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    .line 108
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 109
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userId:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    .line 110
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->lastLoginTime:J

    iput-wide v4, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    .line 111
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->sign:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    .line 112
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    iput v3, v2, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 113
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->agentId:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    .line 115
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->newSdkReg:I

    iput v3, v2, Lcom/game/sdk/domain/UserInfo;->newSdkReg:I

    .line 116
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->fixName:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->fixName:Ljava/lang/String;

    .line 117
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->cpNotice:I

    iput v3, v2, Lcom/game/sdk/domain/UserInfo;->cpNotice:I

    .line 120
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isAuthenticated:I

    iput v3, v2, Lcom/game/sdk/domain/UserInfo;->isAuthenticated:I

    .line 121
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->birthday:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->birthday:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/game/sdk/engin/LoginEngin;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    const-string v3, "last_agent_id"

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v2, 0x1

    sput-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 126
    iget-object v2, p1, Lcom/game/sdk/domain/QuickLoginInfo;->gameNotice:Lcom/game/sdk/domain/NoticeMsg;

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p1, Lcom/game/sdk/domain/QuickLoginInfo;->gameNotice:Lcom/game/sdk/domain/NoticeMsg;

    iget-object v2, v2, Lcom/game/sdk/domain/NoticeMsg;->body:Ljava/lang/String;

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v1

    .line 131
    .local v1, "isExist":Z
    if-nez v1, :cond_4

    .line 132
    iget-object v2, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    .line 133
    iget v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    iget v5, p0, Lcom/game/sdk/engin/LoginEngin;->accountType:I

    .line 132
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 142
    :goto_0
    sget v2, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    if-ne v2, v6, :cond_3

    .line 143
    iget-object v2, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    invoke-static {v2, v3}, Lcom/game/sdk/utils/AccountInfoUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 146
    :cond_3
    return-void

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    .line 139
    iget v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    iget v5, p0, Lcom/game/sdk/engin/LoginEngin;->accountType:I

    .line 138
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

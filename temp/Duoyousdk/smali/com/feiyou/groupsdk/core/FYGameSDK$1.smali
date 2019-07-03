.class Lcom/feiyou/groupsdk/core/FYGameSDK$1;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Lcom/duoyou/gamesdk/openapi/OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK;->initSDK(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYInitCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->val$initCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogOut(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->val$initCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYInitCallback;->switchUser()V

    .line 135
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-static {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->access$1(Lcom/feiyou/groupsdk/core/FYGameSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-static {v2}, Lcom/feiyou/groupsdk/core/FYGameSDK;->access$0(Lcom/feiyou/groupsdk/core/FYGameSDK;)Lcom/feiyou/groupsdk/core/FYLoginCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/feiyou/groupsdk/core/FYGameSDK;->login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "mess"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 123
    .local v0, "errorInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;
    invoke-virtual {v0, p1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setCode(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-static {v1}, Lcom/feiyou/groupsdk/core/FYGameSDK;->access$0(Lcom/feiyou/groupsdk/core/FYGameSDK;)Lcom/feiyou/groupsdk/core/FYLoginCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/feiyou/groupsdk/core/FYLoginCallback;->loginFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 127
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "throwable  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 12
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v10, "userId"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "userId":Ljava/lang/String;
    const-string v10, "username"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, "username":Ljava/lang/String;
    const-string v10, "mobile"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "phoneNum":Ljava/lang/String;
    const-string v10, "certif"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "certif":I
    new-instance v8, Lcom/feiyou/groupsdk/core/FYUserInfo;

    invoke-direct {v8}, Lcom/feiyou/groupsdk/core/FYUserInfo;-><init>()V

    .line 84
    .local v8, "userInfo":Lcom/feiyou/groupsdk/core/FYUserInfo;
    invoke-virtual {v8, v7}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setUserid(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v8, v9}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setUsername(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v8, v0}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setIsAuthenticated(I)V

    .line 87
    invoke-virtual {v8, v4}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setMobile(Ljava/lang/String;)V

    .line 89
    iget-object v10, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->val$activity:Landroid/app/Activity;

    iget-object v11, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-static {v11}, Lcom/feiyou/groupsdk/core/FYGameSDK;->access$0(Lcom/feiyou/groupsdk/core/FYGameSDK;)Lcom/feiyou/groupsdk/core/FYLoginCallback;

    move-result-object v11

    invoke-static {v10, v8, v11}, Lcom/feiyou/groupsdk/core/ChannelInfo;->login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYUserInfo;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V

    .line 91
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u767b\u5f55\u6210\u529f =   userId = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  username = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  phoneNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  certif=  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "text":Ljava/lang/String;
    const-string v10, "TAG"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v5, Lcom/feiyou/groupsdk/core/RoleInfo;

    invoke-direct {v5}, Lcom/feiyou/groupsdk/core/RoleInfo;-><init>()V

    .line 95
    .local v5, "roleInfo":Lcom/feiyou/groupsdk/core/RoleInfo;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/feiyou/groupsdk/core/RoleInfo;->setDataType(I)V

    .line 96
    const-string v10, "1"

    invoke-virtual {v5, v10}, Lcom/feiyou/groupsdk/core/RoleInfo;->setRoleLevel(Ljava/lang/String;)V

    .line 97
    const-string v10, "test"

    invoke-virtual {v5, v10}, Lcom/feiyou/groupsdk/core/RoleInfo;->setRoleName(Ljava/lang/String;)V

    .line 98
    const-string v10, "\u65e0"

    invoke-virtual {v5, v10}, Lcom/feiyou/groupsdk/core/RoleInfo;->setUnion(Ljava/lang/String;)V

    .line 99
    const-string v10, "0"

    invoke-virtual {v5, v10}, Lcom/feiyou/groupsdk/core/RoleInfo;->setVip(Ljava/lang/String;)V

    .line 100
    const-string v10, "\u65e0"

    invoke-virtual {v5, v10}, Lcom/feiyou/groupsdk/core/RoleInfo;->setRoleId(Ljava/lang/String;)V

    .line 101
    const-string v10, "\u65e0"

    invoke-virtual {v5, v10}, Lcom/feiyou/groupsdk/core/RoleInfo;->setServerID(Ljava/lang/String;)V

    .line 103
    iget-object v10, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-virtual {v10, v5}, Lcom/feiyou/groupsdk/core/FYGameSDK;->submitRole(Lcom/feiyou/groupsdk/core/RoleInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "certif":I
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v4    # "phoneNum":Ljava/lang/String;
    .end local v5    # "roleInfo":Lcom/feiyou/groupsdk/core/RoleInfo;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/String;
    .end local v8    # "userInfo":Lcom/feiyou/groupsdk/core/FYUserInfo;
    .end local v9    # "username":Ljava/lang/String;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    new-instance v3, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v3}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 109
    .local v3, "errorInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;
    const-string v10, "0"

    invoke-virtual {v3, v10}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setCode(Ljava/lang/String;)V

    .line 110
    const-string v10, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v3, v10}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 111
    iget-object v10, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-static {v10}, Lcom/feiyou/groupsdk/core/FYGameSDK;->access$0(Lcom/feiyou/groupsdk/core/FYGameSDK;)Lcom/feiyou/groupsdk/core/FYLoginCallback;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/feiyou/groupsdk/core/FYLoginCallback;->loginFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    goto :goto_0
.end method

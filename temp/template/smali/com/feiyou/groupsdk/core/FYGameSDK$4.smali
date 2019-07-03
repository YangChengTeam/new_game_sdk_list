.class Lcom/feiyou/groupsdk/core/FYGameSDK$4;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Lcom/game/sdk/domain/OnLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK;->login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$4;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$4;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V
    .locals 3
    .param p1, "loginErrorMsg"    # Lcom/game/sdk/domain/LoginErrorMsg;

    .prologue
    .line 114
    new-instance v0, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 115
    .local v0, "errorInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Lcom/game/sdk/domain/LoginErrorMsg;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/game/sdk/domain/LoginErrorMsg;->code:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setCode(Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/game/sdk/domain/LoginErrorMsg;->msg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$4;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    invoke-virtual {v1, v0}, Lcom/feiyou/groupsdk/core/FYLoginCallback;->loginFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 118
    return-void
.end method

.method public loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V
    .locals 4
    .param p1, "logincallBack"    # Lcom/game/sdk/domain/LogincallBack;

    .prologue
    .line 98
    new-instance v0, Lcom/feiyou/groupsdk/core/FYUserInfo;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYUserInfo;-><init>()V

    .line 101
    .local v0, "userInfo":Lcom/feiyou/groupsdk/core/FYUserInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setTimestamp(Ljava/lang/String;)V

    .line 102
    iget-object v1, p1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setSign(Ljava/lang/String;)V

    .line 103
    iget-object v1, p1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setUserid(Ljava/lang/String;)V

    .line 104
    iget-object v1, p1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setUsername(Ljava/lang/String;)V

    .line 105
    iget-boolean v1, p1, Lcom/game/sdk/domain/LogincallBack;->isAuthenticated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setIsAuthenticated(I)V

    .line 107
    iget-object v1, p1, Lcom/game/sdk/domain/LogincallBack;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setBirthday(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$4;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    invoke-static {v1, v0, v2}, Lcom/feiyou/groupsdk/core/ChannelInfo;->login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYUserInfo;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V

    .line 109
    return-void

    .line 106
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Lcom/feiyou/groupsdk/core/FYGameSDK$4;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Lcom/game91/framework/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK;->login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/game91/framework/callback/Callback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
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

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "arg0"    # Ljava/lang/Integer;

    .prologue
    .line 113
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game91/framework/NineGame;->getUserInfo()Lcom/game91/framework/callback/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game91/framework/callback/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/game91/framework/NineGame;->getInstance()Lcom/game91/framework/NineGame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game91/framework/NineGame;->getUserInfo()Lcom/game91/framework/callback/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game91/framework/callback/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "token":Ljava/lang/String;
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v2, Lcom/feiyou/groupsdk/core/FYUserInfo;

    invoke-direct {v2}, Lcom/feiyou/groupsdk/core/FYUserInfo;-><init>()V

    .line 119
    .local v2, "userInfo":Lcom/feiyou/groupsdk/core/FYUserInfo;
    invoke-virtual {v2, v1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setUserid(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, v0}, Lcom/feiyou/groupsdk/core/FYUserInfo;->setToken(Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$4;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$4;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    invoke-static {v3, v2, v4}, Lcom/feiyou/groupsdk/core/ChannelInfo;->login(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYUserInfo;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V

    .line 134
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/feiyou/groupsdk/core/FYGameSDK$4;->call(Ljava/lang/Integer;)V

    return-void
.end method

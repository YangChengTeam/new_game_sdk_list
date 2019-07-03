.class Lcom/feiyou/groupsdk/core/FYGameSDK$5;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

.field private final synthetic val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYLoginCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "throwable  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 145
    .local v0, "errorInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    invoke-virtual {v1, v0}, Lcom/feiyou/groupsdk/core/FYLoginCallback;->loginFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 147
    return-void
.end method

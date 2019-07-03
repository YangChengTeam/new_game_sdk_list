.class Lcom/feiyou/groupsdk/core/FYGameSDK$1;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Lcom/game/sdk/OnSDKInitListener;


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

.field private final synthetic val$initCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYInitCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->val$initCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailure()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->val$initCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYInitCallback;->initFailure()V

    .line 65
    const-string v0, "TAG"

    const-string v1, "initFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public initSuccess()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->val$initCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYInitCallback;->initSuccess()V

    .line 59
    const-string v0, "TAG"

    const-string v1, "initSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

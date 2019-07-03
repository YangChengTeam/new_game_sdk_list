.class Lcom/feiyou/groupsdk/core/FYGameSDK$3;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Lcom/duoyou/gamesdk/openapi/OnExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK;->exitSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$3;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitCallback(Z)V
    .locals 1
    .param p1, "isClickExit"    # Z

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$3;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-static {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->access$3(Lcom/feiyou/groupsdk/core/FYGameSDK;)Lcom/feiyou/groupsdk/core/FYInitCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYInitCallback;->logout()V

    .line 303
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$3;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-static {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->access$2(Lcom/feiyou/groupsdk/core/FYGameSDK;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 304
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 306
    :cond_0
    return-void
.end method

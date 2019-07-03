.class Lcom/feiyou/groupsdk/core/FYGameSDK$7;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Lcom/game91/framework/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK;->exitSDK()V
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


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$7;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Integer;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$7;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-static {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->access$2(Lcom/feiyou/groupsdk/core/FYGameSDK;)Lcom/feiyou/groupsdk/core/FYInitCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYInitCallback;->logout()V

    .line 270
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$7;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    invoke-static {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->access$0(Lcom/feiyou/groupsdk/core/FYGameSDK;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 271
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 272
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/feiyou/groupsdk/core/FYGameSDK$7;->call(Ljava/lang/Integer;)V

    return-void
.end method

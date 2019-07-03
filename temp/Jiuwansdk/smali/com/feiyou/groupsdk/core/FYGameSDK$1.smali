.class Lcom/feiyou/groupsdk/core/FYGameSDK$1;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Lcom/game91/framework/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK;->initSDK(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYInitCallback;)V
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

.field private final synthetic val$initCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Lcom/feiyou/groupsdk/core/FYInitCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->val$initCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->val$initCallback:Lcom/feiyou/groupsdk/core/FYInitCallback;

    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYInitCallback;->initSuccess()V

    .line 67
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/feiyou/groupsdk/core/FYGameSDK$1;->call(Ljava/lang/Integer;)V

    return-void
.end method

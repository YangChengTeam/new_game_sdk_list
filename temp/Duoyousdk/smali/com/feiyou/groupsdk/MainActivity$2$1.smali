.class Lcom/feiyou/groupsdk/MainActivity$2$1;
.super Lcom/feiyou/groupsdk/core/FYLoginCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/MainActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/feiyou/groupsdk/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/MainActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/MainActivity$2$1;->this$1:Lcom/feiyou/groupsdk/MainActivity$2;

    .line 95
    invoke-direct {p0}, Lcom/feiyou/groupsdk/core/FYLoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public loginFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 108
    const-string v0, "TAG"

    const-string v1, "error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public loginSuccess(Lcom/feiyou/groupsdk/core/FYUserInfo;)V
    .locals 3
    .param p1, "userInfo"    # Lcom/feiyou/groupsdk/core/FYUserInfo;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/feiyou/groupsdk/MainActivity$2$1;->this$1:Lcom/feiyou/groupsdk/MainActivity$2;

    invoke-static {v0}, Lcom/feiyou/groupsdk/MainActivity$2;->access$0(Lcom/feiyou/groupsdk/MainActivity$2;)Lcom/feiyou/groupsdk/MainActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->getUserid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feiyou/groupsdk/MainActivity;->access$0(Lcom/feiyou/groupsdk/MainActivity;Ljava/lang/String;)V

    .line 100
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->getUserid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYUserInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/feiyou/groupsdk/core/FYGameSDK;->defaultSDK()Lcom/feiyou/groupsdk/core/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feiyou/groupsdk/core/FYGameSDK;->showFloatButton()V

    .line 104
    return-void
.end method

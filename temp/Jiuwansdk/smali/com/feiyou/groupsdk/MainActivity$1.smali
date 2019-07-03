.class Lcom/feiyou/groupsdk/MainActivity$1;
.super Lcom/feiyou/groupsdk/core/FYInitCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feiyou/groupsdk/MainActivity;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/MainActivity$1;->this$0:Lcom/feiyou/groupsdk/MainActivity;

    .line 64
    invoke-direct {p0}, Lcom/feiyou/groupsdk/core/FYInitCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailure()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "TAG"

    const-string v1, "initFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public initSuccess()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "TAG"

    const-string v1, "initSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "TAG"

    const-string v1, "logout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public switchUser()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "TAG"

    const-string v1, "switchUser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

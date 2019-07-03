.class Lcom/feiyou/groupsdk/MainActivity$3$1;
.super Lcom/feiyou/groupsdk/core/FYPayCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/MainActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/feiyou/groupsdk/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/MainActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/MainActivity$3$1;->this$1:Lcom/feiyou/groupsdk/MainActivity$3;

    .line 145
    invoke-direct {p0}, Lcom/feiyou/groupsdk/core/FYPayCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public payCancel(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 2
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 161
    const-string v0, "TAG"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 0
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 157
    return-void
.end method

.method public paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 2
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 149
    const-string v0, "TAG"

    const-string v1, "pay success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

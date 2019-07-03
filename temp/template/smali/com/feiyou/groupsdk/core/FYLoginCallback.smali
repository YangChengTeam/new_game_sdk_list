.class public abstract Lcom/feiyou/groupsdk/core/FYLoginCallback;
.super Ljava/lang/Object;
.source "FYLoginCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract loginFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
.end method

.method public abstract loginSuccess(Lcom/feiyou/groupsdk/core/FYUserInfo;)V
.end method

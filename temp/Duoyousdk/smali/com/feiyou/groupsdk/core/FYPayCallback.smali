.class public abstract Lcom/feiyou/groupsdk/core/FYPayCallback;
.super Ljava/lang/Object;
.source "FYPayCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract payCancel(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
.end method

.method public abstract payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
.end method

.method public abstract paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
.end method

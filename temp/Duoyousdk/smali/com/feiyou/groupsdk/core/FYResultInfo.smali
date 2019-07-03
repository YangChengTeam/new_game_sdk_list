.class public Lcom/feiyou/groupsdk/core/FYResultInfo;
.super Ljava/lang/Object;
.source "FYResultInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<TT;>;"
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYResultInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<TT;>;"
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYResultInfo;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<TT;>;"
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYResultInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 18
    .local p0, "this":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<TT;>;"
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYResultInfo;->code:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYResultInfo;->data:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    .local p0, "this":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<TT;>;"
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYResultInfo;->msg:Ljava/lang/String;

    .line 27
    return-void
.end method

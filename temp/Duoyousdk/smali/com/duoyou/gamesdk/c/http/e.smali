.class public abstract Lcom/duoyou/gamesdk/c/http/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<String:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c",
        "<TString;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;)V
    .locals 0

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TString;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Throwable;Z)V
.end method

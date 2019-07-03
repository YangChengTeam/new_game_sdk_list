.class public Lcom/game91/framework/core/GlobalActivityListener;
.super Ljava/lang/Object;
.source "GlobalActivityListener.java"


# static fields
.field private static mActivitys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game91/framework/core/GameSdk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/game91/framework/core/GlobalActivityListener;->mActivitys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/game91/framework/core/GameSdk;)V
    .locals 1
    .param p0, "listener"    # Lcom/game91/framework/core/GameSdk;

    .prologue
    .line 14
    sget-object v0, Lcom/game91/framework/core/GlobalActivityListener;->mActivitys:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lcom/game91/framework/core/GlobalActivityListener;->mActivitys:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    return-void
.end method

.method public static getActivityListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/game91/framework/core/GameSdk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/game91/framework/core/GlobalActivityListener;->mActivitys:Ljava/util/List;

    return-object v0
.end method

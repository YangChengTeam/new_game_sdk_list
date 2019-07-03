.class public Lcom/game91/framework/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapper(Lcom/game91/framework/core/IActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/game91/framework/core/IActivity;

    .prologue
    .line 12
    sput-object p0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    .line 13
    sget-object v0, Lcom/game91/framework/MgGameSdk;->Activity:Lcom/game91/framework/core/IActivity;

    check-cast v0, Lcom/game91/framework/core/IGame;

    sput-object v0, Lcom/game91/framework/MgGameSdk;->Game:Lcom/game91/framework/core/IGame;

    .line 14
    return-void
.end method

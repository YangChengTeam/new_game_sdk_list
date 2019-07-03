.class Lcom/game91/framework/MgGameSdk;
.super Ljava/lang/Object;
.source "MgGameSdk.java"


# static fields
.field public static Activity:Lcom/game91/framework/core/IActivity;

.field public static final Application:Lcom/game91/framework/core/IApplication;

.field public static Game:Lcom/game91/framework/core/IGame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/game91/framework/impl/ApplicationImpl;

    invoke-direct {v0}, Lcom/game91/framework/impl/ApplicationImpl;-><init>()V

    sput-object v0, Lcom/game91/framework/MgGameSdk;->Application:Lcom/game91/framework/core/IApplication;

    .line 20
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

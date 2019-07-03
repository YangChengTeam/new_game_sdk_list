.class public Lcom/game91/framework/NineGame$HINSTANCE;
.super Ljava/lang/Object;
.source "NineGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/NineGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HINSTANCE"
.end annotation


# static fields
.field static final Hinstance:Lcom/game91/framework/NineGame;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/game91/framework/NineGame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/game91/framework/NineGame;-><init>(Lcom/game91/framework/NineGame$1;)V

    sput-object v0, Lcom/game91/framework/NineGame$HINSTANCE;->Hinstance:Lcom/game91/framework/NineGame;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/duoyou/gamesdk/c/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DUOYOU_GAME_SDK_APPID"

    sput-object v0, Lcom/duoyou/gamesdk/c/a;->a:Ljava/lang/String;

    const-string v0, "DUOYOU_GAME_SDK_APPKEY"

    sput-object v0, Lcom/duoyou/gamesdk/c/a;->b:Ljava/lang/String;

    return-void
.end method

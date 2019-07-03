.class public Lcom/duoyou/gamesdk/p/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/duoyou/gamesdk/p/a/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/duoyou/gamesdk/p/a/a;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/p/a/a;->a:Lcom/duoyou/gamesdk/p/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/p/a/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/p/a/a;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/p/a/a;->a:Lcom/duoyou/gamesdk/p/a/a;

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/p/a/a;->a:Lcom/duoyou/gamesdk/p/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/DyPayInfo;Ljava/lang/String;Lcom/duoyou/gamesdk/openapi/OnPayCallback;)V
    .locals 6

    new-instance v0, Lcom/duoyou/gamesdk/p/a/a$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/duoyou/gamesdk/p/a/a$1;-><init>(Lcom/duoyou/gamesdk/p/a/a;Landroid/app/Activity;Ljava/lang/String;Lcom/duoyou/gamesdk/openapi/OnPayCallback;Lcom/duoyou/gamesdk/openapi/DyPayInfo;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

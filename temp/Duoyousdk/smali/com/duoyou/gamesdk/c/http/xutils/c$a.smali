.class public Lcom/duoyou/gamesdk/c/http/xutils/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/c/http/xutils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Z

.field private static b:Landroid/app/Application;

.field private static c:Lcom/duoyou/gamesdk/c/http/xutils/common/a;

.field private static d:Lcom/duoyou/gamesdk/c/http/xutils/b;


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/c;->a()V

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->b:Landroid/app/Application;

    if-nez v0, :cond_0

    sput-object p0, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->b:Landroid/app/Application;

    :cond_0
    return-void
.end method

.method public static a(Lcom/duoyou/gamesdk/c/http/xutils/b;)V
    .locals 0

    sput-object p0, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->d:Lcom/duoyou/gamesdk/c/http/xutils/b;

    return-void
.end method

.method public static a(Lcom/duoyou/gamesdk/c/http/xutils/common/a;)V
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->c:Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    if-nez v0, :cond_0

    sput-object p0, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->c:Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    :cond_0
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->a:Z

    return v0
.end method

.method static synthetic b()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->b:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic b(Landroid/app/Application;)Landroid/app/Application;
    .locals 0

    sput-object p0, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->b:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic c()Lcom/duoyou/gamesdk/c/http/xutils/common/a;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->c:Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    return-object v0
.end method

.method static synthetic d()Lcom/duoyou/gamesdk/c/http/xutils/b;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->d:Lcom/duoyou/gamesdk/c/http/xutils/b;

    return-object v0
.end method

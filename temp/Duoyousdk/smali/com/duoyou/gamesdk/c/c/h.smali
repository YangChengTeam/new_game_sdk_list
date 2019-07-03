.class public Lcom/duoyou/gamesdk/c/c/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/duoyou/gamesdk/c/c/h;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/duoyou/gamesdk/c/c/h;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/c/h;->a:Lcom/duoyou/gamesdk/c/c/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/c/c/h;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/c/h;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/c/h;->a:Lcom/duoyou/gamesdk/c/c/h;

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/c/c/h;->a:Lcom/duoyou/gamesdk/c/c/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/c/h;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/h;->b:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/h;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "5652225"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/h;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const-string v0, "sys/globalconf"

    new-instance v1, Lcom/duoyou/gamesdk/c/c/h$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/c/h$1;-><init>(Lcom/duoyou/gamesdk/c/c/h;)V

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/http/d;->a(Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

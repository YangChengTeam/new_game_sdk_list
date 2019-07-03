.class public final Lcom/duoyou/gamesdk/c/http/xutils/http/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/http/xutils/b;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/duoyou/gamesdk/c/http/xutils/http/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/b;

    if-nez v0, :cond_1

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/b;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->a(Lcom/duoyou/gamesdk/c/http/xutils/b;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;Lcom/duoyou/gamesdk/c/http/xutils/http/e;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/e;",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c",
            "<TT;>;)",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)V

    const/4 v0, 0x0

    instance-of v1, p3, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    if-eqz v1, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    :cond_0
    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/http/c;

    invoke-direct {v1, p2, v0, p3}, Lcom/duoyou/gamesdk/c/http/xutils/http/c;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c;)V

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c;->c()Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;)Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/e;",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c",
            "<TT;>;)",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;"
        }
    .end annotation

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->GET:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;Lcom/duoyou/gamesdk/c/http/xutils/http/e;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/e;",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c",
            "<TT;>;)",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;"
        }
    .end annotation

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->POST:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;Lcom/duoyou/gamesdk/c/http/xutils/http/e;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    move-result-object v0

    return-object v0
.end method

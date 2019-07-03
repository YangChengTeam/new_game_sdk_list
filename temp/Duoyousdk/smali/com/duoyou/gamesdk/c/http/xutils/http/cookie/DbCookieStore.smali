.class public final enum Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/net/CookieStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;",
        ">;",
        "Ljava/net/CookieStore;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

.field public static final enum INSTANCE:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

.field private static final LIMIT_COUNT:I = 0x1388

.field private static final TRIM_TIME_SPAN:J = 0x3e8L


# instance fields
.field private final db:Lcom/duoyou/gamesdk/c/http/xutils/a;

.field private lastTrimTime:J

.field private final trimExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->INSTANCE:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->INSTANCE:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    aput-object v1, v0, v2

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->$VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;

    invoke-direct {v0, v1, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->trimExecutor:Ljava/util/concurrent/Executor;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->COOKIE:Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->getConfig()Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/c;->a(Lcom/duoyou/gamesdk/c/http/xutils/a$a;)Lcom/duoyou/gamesdk/c/http/xutils/a;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->db:Lcom/duoyou/gamesdk/c/http/xutils/a;

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->db:Lcom/duoyou/gamesdk/c/http/xutils/a;

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    const-string v2, "expiry"

    const-string v3, "="

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/a;->a(Ljava/lang/Class;Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;)J
    .locals 2

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;J)J
    .locals 1

    iput-wide p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;)Lcom/duoyou/gamesdk/c/http/xutils/a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->db:Lcom/duoyou/gamesdk/c/http/xutils/a;

    return-object v0
.end method

.method private getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "http"

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p1

    goto :goto_0
.end method

.method private trimSize()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->trimExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore$1;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;
    .locals 1

    const-class v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    return-object v0
.end method

.method public static values()[Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->$VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    invoke-virtual {v0}, [Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 3

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->db:Lcom/duoyou/gamesdk/c/http/xutils/a;

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    invoke-direct {v2, v0, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;-><init>(Ljava/net/URI;Ljava/net/HttpCookie;)V

    invoke-interface {v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->trimSize()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public get(Ljava/net/URI;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->db:Lcom/duoyou/gamesdk/c/http/xutils/a;

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    invoke-interface {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/a;->c(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v4

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->a()Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "domain"

    const-string v6, "="

    invoke-static {v1, v6, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v1

    const-string v6, "domain"

    const-string v7, "="

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v1

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v6, :cond_1

    if-le v7, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "domain"

    const-string v7, "="

    invoke-virtual {v1, v6, v7, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    :cond_1
    invoke-virtual {v5, v1}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    :cond_2
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "path"

    const-string v6, "="

    invoke-static {v0, v6, v1}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v0

    const-string v6, "path"

    const-string v7, "="

    const-string v8, "/"

    invoke-virtual {v0, v6, v7, v8}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v0

    const-string v6, "path"

    const-string v7, "="

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v6

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v0, "path"

    const-string v7, "="

    invoke-virtual {v6, v0, v7, v1}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v6}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    :cond_4
    const-string v0, "uri"

    const-string v1, "="

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    invoke-virtual {v4, v5}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->b()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->a()Ljava/net/HttpCookie;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-object v3
.end method

.method public getCookies()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->db:Lcom/duoyou/gamesdk/c/http/xutils/a;

    const-class v2, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    invoke-interface {v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/a;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->a()Ljava/net/HttpCookie;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method

.method public getURIs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->db:Lcom/duoyou/gamesdk/c/http/xutils/a;

    const-class v2, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    invoke-interface {v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/a;->c(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "uri"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->a([Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/db/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/d;

    const-string v3, "uri"

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->db:Lcom/duoyou/gamesdk/c/http/xutils/a;

    const-class v4, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    const-string v5, "uri"

    const-string v6, "="

    invoke-static {v5, v6, v3}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/duoyou/gamesdk/c/http/xutils/a;->a(Ljava/lang/Class;Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method

.method public remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v2, "name"

    const-string v3, "="

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "domain"

    const-string v5, "="

    invoke-virtual {v3, v4, v5, v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    :cond_1
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v4, "path"

    const-string v5, "="

    invoke-virtual {v3, v4, v5, v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    :cond_3
    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->db:Lcom/duoyou/gamesdk/c/http/xutils/a;

    const-class v4, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    invoke-interface {v2, v4, v3}, Lcom/duoyou/gamesdk/c/http/xutils/a;->a(Ljava/lang/Class;Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public removeAll()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->db:Lcom/duoyou/gamesdk/c/http/xutils/a;

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    invoke-interface {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/a;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

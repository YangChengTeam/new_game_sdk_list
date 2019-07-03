.class public final Lcom/duoyou/gamesdk/c/http/xutils/db/b;
.super Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/a$a;",
            "Lcom/duoyou/gamesdk/c/http/xutils/db/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/duoyou/gamesdk/c/http/xutils/a$a;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/a$a;)V
    .locals 2

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "daoConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d:Z

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b(Lcom/duoyou/gamesdk/c/http/xutils/a$a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->e()Lcom/duoyou/gamesdk/c/http/xutils/a$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/a$b;->a(Lcom/duoyou/gamesdk/c/http/xutils/a;)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized a(Lcom/duoyou/gamesdk/c/http/xutils/a$a;)Lcom/duoyou/gamesdk/c/http/xutils/a;
    .locals 6

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/db/b;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;-><init>()V

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;

    if-nez v0, :cond_3

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/a$a;)V

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v2, v0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->c()I

    move-result v4

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->f()Lcom/duoyou/gamesdk/c/http/xutils/a$c;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5, v0, v3, v4}, Lcom/duoyou/gamesdk/c/http/xutils/a$c;->a(Lcom/duoyou/gamesdk/c/http/xutils/a;II)V

    :cond_1
    :goto_1
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_1
    iput-object p0, v0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->c()V
    :try_end_2
    .catch Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private b(Lcom/duoyou/gamesdk/c/http/xutils/a$a;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->a()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c;->b()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Application;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d()V

    invoke-static {v0, p2}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;)I

    move-result v0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    throw v0
.end method

.method public a()Lcom/duoyou/gamesdk/c/http/xutils/a$a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;)V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a(Ljava/lang/Class;Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)I

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d()V

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;)V

    invoke-static {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;)V

    :cond_2
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d()V

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;Ljava/lang/Object;[Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {v0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;Ljava/lang/Object;[Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;)V

    :cond_4
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->c(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d()V

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/b;->b(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/b;->b(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;)V

    :cond_4
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->f()V

    goto :goto_0
.end method

.method public c(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/duoyou/gamesdk/c/http/xutils/db/d",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->d(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

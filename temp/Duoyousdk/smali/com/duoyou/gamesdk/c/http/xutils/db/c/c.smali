.class public abstract Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/http/xutils/a;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/duoyou/gamesdk/c/http/xutils/db/c/e",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoyou/gamesdk/c/http/xutils/db/c/e",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->a(Z)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a()Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->g()Lcom/duoyou/gamesdk/c/http/xutils/a$d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/a$d;->a(Lcom/duoyou/gamesdk/c/http/xutils/a;Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;)V

    :cond_1
    monitor-exit v1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 5

    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name<>\'sqlite_sequence\'"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Landroid/database/Cursor;)V

    throw v0

    :cond_0
    :try_start_4
    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->a(Z)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :try_start_7
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Landroid/database/Cursor;)V

    :cond_2
    return-void
.end method

.method public d(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/duoyou/gamesdk/c/http/xutils/db/c/e",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;

    invoke-direct {v0, p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/a;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/c;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

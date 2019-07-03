.class public final Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/duoyou/gamesdk/c/http/xutils/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;

.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile g:Z

.field private final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/a;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoyou/gamesdk/c/http/xutils/a;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->a:Lcom/duoyou/gamesdk/c/http/xutils/a;

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->e:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->f:Ljava/lang/reflect/Constructor;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->f:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const-class v0, Lcom/duoyou/gamesdk/c/http/xutils/db/a/b;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/db/a/b;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/a/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/f;->a(Ljava/lang/Class;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->h:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->d:Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->f:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->g:Z

    return-void
.end method

.method public b()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->a:Lcom/duoyou/gamesdk/c/http/xutils/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/a;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Landroid/database/Cursor;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public c()Lcom/duoyou/gamesdk/c/http/xutils/a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->a:Lcom/duoyou/gamesdk/c/http/xutils/a;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->d:Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;

    return-object v0
.end method

.method public h()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->h:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->g:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

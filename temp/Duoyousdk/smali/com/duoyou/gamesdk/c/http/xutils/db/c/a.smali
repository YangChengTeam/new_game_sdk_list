.class public final Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/reflect/Method;

.field protected final c:Ljava/lang/reflect/Method;

.field protected final d:Ljava/lang/reflect/Field;

.field protected final e:Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Z


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->d:Ljava/lang/reflect/Field;

    invoke-interface {p3}, Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->a:Ljava/lang/String;

    invoke-interface {p3}, Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->f:Ljava/lang/String;

    invoke-interface {p3}, Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->g:Z

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->g:Z

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/b;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->h:Z

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/b/f;->a(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->e:Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;

    invoke-static {p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/b;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->b:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    invoke-static {p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/b;->b(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->c:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->h:Z

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->e:Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;

    invoke-interface {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->e:Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;

    invoke-interface {v0, p2, p3}, Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;->b(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->g:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->h:Z

    return v0
.end method

.method public e()Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/ColumnDbType;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->e:Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;->a()Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

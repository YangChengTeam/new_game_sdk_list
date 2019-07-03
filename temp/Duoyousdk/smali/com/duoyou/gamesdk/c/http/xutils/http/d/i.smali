.class Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;
.super Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/reflect/Type;

.field private final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final g:Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 4

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->e:Ljava/lang/reflect/Type;

    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->f:Ljava/lang/Class;

    :goto_0
    const-class v0, Ljava/util/List;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->f:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->e:Ljava/lang/reflect/Type;

    const-class v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :goto_1
    const-class v2, Lcom/duoyou/gamesdk/c/http/xutils/http/a/b;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/a/b;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a/b;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->g:Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support callback type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->f:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support callback type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "create parser error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not found @HttpResponse from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->f:Ljava/lang/Class;

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/http/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/a/b;

    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a/b;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->g:Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "create parser error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found @HttpResponse from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "use constructor create ObjectLoader."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->g:Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;

    instance-of v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->g:Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/c;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->e:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->f:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/c;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->g:Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->e:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->f:Ljava/lang/Class;

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/lang/Object;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->g:Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->e:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->f:Ljava/lang/Class;

    invoke-interface {v1, v2, v3, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->g:Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->g()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;->g:Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;

    invoke-interface {v1, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/h;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V

    throw v0
.end method

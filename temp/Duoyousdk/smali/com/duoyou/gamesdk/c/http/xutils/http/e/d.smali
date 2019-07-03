.class public abstract Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

.field protected final c:Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
            "<*>;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/ClassLoader;

.field protected e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

.field protected f:Lcom/duoyou/gamesdk/c/http/xutils/http/b/f;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Ljava/lang/reflect/Type;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->d:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->f:Lcom/duoyou/gamesdk/c/http/xutils/http/b/f;

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a(Ljava/lang/reflect/Type;Lcom/duoyou/gamesdk/c/http/xutils/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->c:Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    return-void
.end method


# virtual methods
.method protected a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a()V
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->f:Lcom/duoyou/gamesdk/c/http/xutils/http/b/f;

    return-void
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/d;)V
    .locals 1

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->c:Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/d;)V

    return-void
.end method

.method public a(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->d:Ljava/lang/ClassLoader;

    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract b()Z
.end method

.method public b_()V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c;->c()Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d$1;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V

    invoke-interface {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract close()V
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->c:Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    invoke-virtual {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Ljava/lang/Object;
.end method

.method public abstract f()V
.end method

.method public abstract g()Ljava/io/InputStream;
.end method

.method public abstract h()J
.end method

.method public abstract i()I
.end method

.method public abstract j()J
.end method

.method public abstract k()J
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public o()Lcom/duoyou/gamesdk/c/http/xutils/http/e;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

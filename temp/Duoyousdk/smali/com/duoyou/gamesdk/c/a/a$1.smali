.class Lcom/duoyou/gamesdk/c/a/a$1;
.super Lcom/duoyou/gamesdk/c/http/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/e",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/c/a/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/a/a$1;->a:Lcom/duoyou/gamesdk/c/a/a;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/a/a$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 2

    const-string v0, "reqUploadDeviceInfo"

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

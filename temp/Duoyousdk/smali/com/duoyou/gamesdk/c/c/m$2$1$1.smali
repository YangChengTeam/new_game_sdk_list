.class Lcom/duoyou/gamesdk/c/c/m$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/c/m$2$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/duoyou/gamesdk/c/c/m$2$1;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/c/m$2$1;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/c/m$2$1$1;->c:Lcom/duoyou/gamesdk/c/c/m$2$1;

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/c/m$2$1$1;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/duoyou/gamesdk/c/c/m$2$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$2$1$1;->c:Lcom/duoyou/gamesdk/c/c/m$2$1;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/c/m$2;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/c/m$2$1$1;->a:Landroid/app/Dialog;

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/g;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/c/m$2$1$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

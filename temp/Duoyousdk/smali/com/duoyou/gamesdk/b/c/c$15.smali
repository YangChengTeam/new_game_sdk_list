.class Lcom/duoyou/gamesdk/b/c/c$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/c/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/b/c/c;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/c$15;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$15;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "html/xieyi/"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
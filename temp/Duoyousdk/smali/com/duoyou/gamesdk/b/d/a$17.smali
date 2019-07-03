.class Lcom/duoyou/gamesdk/b/d/a$17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/d/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/b/d/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/d/a$17;->a:Lcom/duoyou/gamesdk/b/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a$17;->a:Lcom/duoyou/gamesdk/b/d/a;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/d/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "html/xieyi/"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/duoyou/gamesdk/p/PA$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/p/PA$6;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/duoyou/gamesdk/p/PA$6;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/p/PA$6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/p/PA$6$1;->b:Lcom/duoyou/gamesdk/p/PA$6;

    iput-object p2, p0, Lcom/duoyou/gamesdk/p/PA$6$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/PA$6$1;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/PA$6$1;->b:Lcom/duoyou/gamesdk/p/PA$6;

    iget-object v1, v1, Lcom/duoyou/gamesdk/p/PA$6;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/p/PA;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

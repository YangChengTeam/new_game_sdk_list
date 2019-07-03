.class Lcom/duoyou/gamesdk/a/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/a/a;->exist(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/OnExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/duoyou/gamesdk/openapi/OnExitCallback;

.field final synthetic c:Lcom/duoyou/gamesdk/a/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/a/a;Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/OnExitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a$4;->c:Lcom/duoyou/gamesdk/a/a;

    iput-object p2, p0, Lcom/duoyou/gamesdk/a/a$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/duoyou/gamesdk/a/a$4;->b:Lcom/duoyou/gamesdk/openapi/OnExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$4;->a:Landroid/app/Activity;

    const-string v1, "\u662f\u5426\u9000\u51fa\u6e38\u620f"

    const-string v2, "\u9000\u51fa\u6e38\u620f"

    const-string v3, "\u518d\u73a9\u4e00\u4f1a"

    new-instance v4, Lcom/duoyou/gamesdk/a/a$4$1;

    invoke-direct {v4, p0}, Lcom/duoyou/gamesdk/a/a$4$1;-><init>(Lcom/duoyou/gamesdk/a/a$4;)V

    new-instance v5, Lcom/duoyou/gamesdk/a/a$4$2;

    invoke-direct {v5, p0}, Lcom/duoyou/gamesdk/a/a$4$2;-><init>(Lcom/duoyou/gamesdk/a/a$4;)V

    invoke-static/range {v0 .. v5}, Lcom/duoyou/gamesdk/c/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

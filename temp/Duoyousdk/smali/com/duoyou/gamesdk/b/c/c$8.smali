.class Lcom/duoyou/gamesdk/b/c/c$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/c/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/duoyou/gamesdk/b/c/c;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/c/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/c$8;->c:Lcom/duoyou/gamesdk/b/c/c;

    iput-object p2, p0, Lcom/duoyou/gamesdk/b/c/c$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoyou/gamesdk/b/c/c$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$8;->c:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->q(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$8;->c:Lcom/duoyou/gamesdk/b/c/c;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/c$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/c$8;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoyou/gamesdk/b/c/c;->a(Lcom/duoyou/gamesdk/b/c/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

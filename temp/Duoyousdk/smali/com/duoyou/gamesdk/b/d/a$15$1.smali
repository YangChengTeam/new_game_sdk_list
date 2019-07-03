.class Lcom/duoyou/gamesdk/b/d/a$15$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/d/a$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/duoyou/gamesdk/b/d/a$15;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/d/a$15;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/d/a$15$1;->d:Lcom/duoyou/gamesdk/b/d/a$15;

    iput-object p2, p0, Lcom/duoyou/gamesdk/b/d/a$15$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoyou/gamesdk/b/d/a$15$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/duoyou/gamesdk/b/d/a$15$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a$15$1;->d:Lcom/duoyou/gamesdk/b/d/a$15;

    iget-object v0, v0, Lcom/duoyou/gamesdk/b/d/a$15;->a:Lcom/duoyou/gamesdk/b/d/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/d/a;->h(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a$15$1;->d:Lcom/duoyou/gamesdk/b/d/a$15;

    iget-object v0, v0, Lcom/duoyou/gamesdk/b/d/a$15;->a:Lcom/duoyou/gamesdk/b/d/a;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/d/a$15$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/d/a$15$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoyou/gamesdk/b/d/a$15$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/b/d/a;->a(Lcom/duoyou/gamesdk/b/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

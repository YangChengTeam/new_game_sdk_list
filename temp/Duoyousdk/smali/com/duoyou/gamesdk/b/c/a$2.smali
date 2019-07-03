.class Lcom/duoyou/gamesdk/b/c/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/c/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/duoyou/gamesdk/b/b/b;

.field final synthetic c:Lcom/duoyou/gamesdk/b/c/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/c/a;ILcom/duoyou/gamesdk/b/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/a$2;->c:Lcom/duoyou/gamesdk/b/c/a;

    iput p2, p0, Lcom/duoyou/gamesdk/b/c/a$2;->a:I

    iput-object p3, p0, Lcom/duoyou/gamesdk/b/c/a$2;->b:Lcom/duoyou/gamesdk/b/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/a$2;->c:Lcom/duoyou/gamesdk/b/c/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/a;->b(Lcom/duoyou/gamesdk/b/c/a;)Lcom/duoyou/gamesdk/b/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/a$2;->c:Lcom/duoyou/gamesdk/b/c/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/a;->b(Lcom/duoyou/gamesdk/b/c/a;)Lcom/duoyou/gamesdk/b/c/a$a;

    move-result-object v0

    iget v1, p0, Lcom/duoyou/gamesdk/b/c/a$2;->a:I

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/a$2;->b:Lcom/duoyou/gamesdk/b/b/b;

    invoke-interface {v0, v1, v2}, Lcom/duoyou/gamesdk/b/c/a$a;->b(ILcom/duoyou/gamesdk/b/b/b;)V

    :cond_0
    return-void
.end method

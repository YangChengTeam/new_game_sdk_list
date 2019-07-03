.class Lcom/duoyou/gamesdk/b/c/a$1;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/duoyou/gamesdk/b/b/b;

.field final synthetic d:Lcom/duoyou/gamesdk/b/c/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/c/a;Ljava/lang/String;ILcom/duoyou/gamesdk/b/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/a$1;->d:Lcom/duoyou/gamesdk/b/c/a;

    iput-object p2, p0, Lcom/duoyou/gamesdk/b/c/a$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/duoyou/gamesdk/b/c/a$1;->b:I

    iput-object p4, p0, Lcom/duoyou/gamesdk/b/c/a$1;->c:Lcom/duoyou/gamesdk/b/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/a$1;->d:Lcom/duoyou/gamesdk/b/c/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/a;->a(Lcom/duoyou/gamesdk/b/c/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8d26\u53f7<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/a$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5220\u9664"

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/duoyou/gamesdk/b/c/a$1$1;

    invoke-direct {v4, p0}, Lcom/duoyou/gamesdk/b/c/a$1$1;-><init>(Lcom/duoyou/gamesdk/b/c/a$1;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/duoyou/gamesdk/c/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

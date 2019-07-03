.class Lcom/duoyou/gamesdk/b/d/a$14;
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

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/d/a$14;->a:Lcom/duoyou/gamesdk/b/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a$14;->a:Lcom/duoyou/gamesdk/b/d/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/d/a;->g(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

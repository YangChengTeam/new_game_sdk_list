.class Lcom/duoyou/gamesdk/f/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/f/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/f/b;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/b$6;->a:Lcom/duoyou/gamesdk/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b$6;->a:Lcom/duoyou/gamesdk/f/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/b;->e(Lcom/duoyou/gamesdk/f/b;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

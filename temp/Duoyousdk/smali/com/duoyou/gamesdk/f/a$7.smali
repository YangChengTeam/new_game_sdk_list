.class Lcom/duoyou/gamesdk/f/a$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/f/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/f/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/a$7;->a:Lcom/duoyou/gamesdk/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a$7;->a:Lcom/duoyou/gamesdk/f/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/a;->h(Lcom/duoyou/gamesdk/f/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
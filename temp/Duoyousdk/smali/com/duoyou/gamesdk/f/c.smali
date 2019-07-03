.class public Lcom/duoyou/gamesdk/f/c;
.super Lcom/duoyou/gamesdk/c/base/a;


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/f/c;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/f/c;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method private e()V
    .locals 2

    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/c;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/c;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/c$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/c$1;-><init>(Lcom/duoyou/gamesdk/f/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_floating_msg_list_layout"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/c;->setContentView(I)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/c;->e()V

    return-void
.end method

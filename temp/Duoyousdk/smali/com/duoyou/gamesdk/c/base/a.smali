.class public Lcom/duoyou/gamesdk/c/base/a;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "DyDialogStyle"

    invoke-static {p1, v0}, Lcom/duoyou/gamesdk/c/c/p;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/base/a;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/base/a;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/base/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/base/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/base/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/base/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/base/a;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/base/a;->dismiss()V

    return-void
.end method

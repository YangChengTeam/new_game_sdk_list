.class public Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;
.super Landroid/app/Dialog;


# instance fields
.field private messageStr:Ljava/lang/String;

.field private messageTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "DyDialogStyle"

    invoke-static {p1, v0}, Lcom/duoyou/gamesdk/c/c/p;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private initData()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->messageStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->messageTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->messageTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->messageStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "message_tv"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->messageTv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_loaing_progress_bar_layout"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->initView()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->initData()V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->messageTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->messageStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->messageTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/LoadingProgressDialog;->messageStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

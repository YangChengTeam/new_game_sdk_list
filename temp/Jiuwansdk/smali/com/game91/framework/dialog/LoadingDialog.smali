.class public Lcom/game91/framework/dialog/LoadingDialog;
.super Lcom/game91/framework/dialog/DialogWindow;
.source "LoadingDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/game91/framework/dialog/DialogWindow;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBackPressed()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "paramLayoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "paramViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, 0x42600000    # 56.0f

    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/game91/framework/dialog/DialogWindow;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 22
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 23
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/game91/framework/dialog/LoadingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 25
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v3

    invoke-static {v4}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 26
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Lcom/game91/framework/widget/LoadingLayout;

    invoke-virtual {p0}, Lcom/game91/framework/dialog/LoadingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/game91/framework/widget/LoadingLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/game91/framework/dialog/LoadingDialog;->setContentView(Landroid/view/View;)Lcom/game91/framework/dialog/DialogWindow;

    .line 28
    move-object v2, v0

    .line 30
    .end local v0    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/game91/framework/dialog/LoadingDialog;->setCanCancelable(Z)Lcom/game91/framework/dialog/DialogWindow;

    .line 31
    return-object v2
.end method

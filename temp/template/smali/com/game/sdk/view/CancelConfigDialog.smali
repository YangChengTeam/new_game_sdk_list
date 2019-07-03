.class public Lcom/game/sdk/view/CancelConfigDialog;
.super Landroid/app/Dialog;
.source "CancelConfigDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/view/CancelConfigDialog$CancelListener;
    }
.end annotation


# instance fields
.field public cancelListener:Lcom/game/sdk/view/CancelConfigDialog$CancelListener;

.field imgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public orderId:Ljava/lang/String;

.field private payCancelBtn:Landroid/widget/Button;

.field private payConfigBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v0, "style"

    const-string v1, "CustomSdkDialog"

    invoke-static {p1, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/view/CancelConfigDialog;->imgs:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/game/sdk/view/CancelConfigDialog;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public getCancelListener()Lcom/game/sdk/view/CancelConfigDialog$CancelListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/game/sdk/view/CancelConfigDialog;->cancelListener:Lcom/game/sdk/view/CancelConfigDialog$CancelListener;

    return-object v0
.end method

.method public initView()V
    .locals 5

    .prologue
    .line 55
    iget-object v2, p0, Lcom/game/sdk/view/CancelConfigDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/game/sdk/view/CancelConfigDialog;->mContext:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "pay_cancel_dialog"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/game/sdk/view/CancelConfigDialog;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "pay_config_btn"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/game/sdk/view/CancelConfigDialog;->payConfigBtn:Landroid/widget/Button;

    .line 59
    iget-object v2, p0, Lcom/game/sdk/view/CancelConfigDialog;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "pay_cancel_btn"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/game/sdk/view/CancelConfigDialog;->payCancelBtn:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0, v1}, Lcom/game/sdk/view/CancelConfigDialog;->setContentView(Landroid/view/View;)V

    .line 69
    iget-object v2, p0, Lcom/game/sdk/view/CancelConfigDialog;->payConfigBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v2, p0, Lcom/game/sdk/view/CancelConfigDialog;->payCancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/game/sdk/view/CancelConfigDialog;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "pay_config_btn"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/game/sdk/view/CancelConfigDialog;->cancelListener:Lcom/game/sdk/view/CancelConfigDialog$CancelListener;

    iget-object v1, p0, Lcom/game/sdk/view/CancelConfigDialog;->orderId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/view/CancelConfigDialog$CancelListener;->cancelConfig(Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/game/sdk/view/CancelConfigDialog;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "pay_cancel_btn"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/game/sdk/view/CancelConfigDialog;->dismiss()V

    .line 85
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/game/sdk/view/CancelConfigDialog;->initView()V

    .line 52
    return-void
.end method

.method public setCancelListener(Lcom/game/sdk/view/CancelConfigDialog$CancelListener;)V
    .locals 0
    .param p1, "payResultListener"    # Lcom/game/sdk/view/CancelConfigDialog$CancelListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/game/sdk/view/CancelConfigDialog;->cancelListener:Lcom/game/sdk/view/CancelConfigDialog$CancelListener;

    .line 37
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/game/sdk/view/CancelConfigDialog;->orderId:Ljava/lang/String;

    .line 46
    return-void
.end method

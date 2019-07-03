.class public Lcom/ipaynow/plugin/view/DefaultLoadingDialog;
.super Lcom/ipaynow/plugin/view/a/h;

# interfaces
.implements Lcom/ipaynow/plugin/view/IpaynowLoading;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/view/a/h;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/ipaynow/plugin/view/a/j;->SPIN_INDETERMINATE:Lcom/ipaynow/plugin/view/a/j;

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/DefaultLoadingDialog;->setStyle(Lcom/ipaynow/plugin/view/a/j;)Lcom/ipaynow/plugin/view/a/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/a/h;->setCancellable(Z)Lcom/ipaynow/plugin/view/a/h;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/ipaynow/plugin/view/a/h;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    invoke-super {p0}, Lcom/ipaynow/plugin/view/a/h;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setLoadingMsg(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ipaynow/plugin/view/a/h;->setLabel(Ljava/lang/String;)Lcom/ipaynow/plugin/view/a/h;

    return-void
.end method

.method public show()Lcom/ipaynow/plugin/view/a/h;
    .locals 1

    invoke-super {p0}, Lcom/ipaynow/plugin/view/a/h;->show()Lcom/ipaynow/plugin/view/a/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic show()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/DefaultLoadingDialog;->show()Lcom/ipaynow/plugin/view/a/h;

    move-result-object v0

    return-object v0
.end method

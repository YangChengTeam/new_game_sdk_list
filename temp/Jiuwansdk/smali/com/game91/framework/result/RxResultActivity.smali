.class public Lcom/game91/framework/result/RxResultActivity;
.super Landroid/app/Activity;
.source "RxResultActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    const-string v3, "intent"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 31
    .local v2, "requestIntent":Landroid/content/Intent;
    const-string v3, "request"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 34
    .local v1, "requestCode":I
    :try_start_0
    invoke-virtual {p0, v2, v1}, Lcom/game91/framework/result/RxResultActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 37
    invoke-static {v1, v0}, Lcom/game91/framework/result/Rx2ActivityResult;->onError(ILandroid/content/ActivityNotFoundException;)V

    .line 38
    invoke-virtual {p0}, Lcom/game91/framework/result/RxResultActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lcom/game91/framework/result/RxResultActivity;->finish()V

    .line 46
    invoke-static {p1, p2, p3}, Lcom/game91/framework/result/Rx2ActivityResult;->onActivityResult(IILandroid/content/Intent;)V

    .line 47
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/game91/framework/result/RxResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/game91/framework/result/RxResultActivity;->handleIntent(Landroid/content/Intent;)V

    .line 21
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/game91/framework/result/RxResultActivity;->handleIntent(Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.class Lcom/game91/framework/dialog/UpdateDialog$3;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Lcom/game91/framework/update/UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/dialog/UpdateDialog;->doDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/dialog/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/game91/framework/dialog/UpdateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/dialog/UpdateDialog;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/game91/framework/dialog/UpdateDialog$3;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$3;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-virtual {v0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u66f4\u65b0\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 311
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$3;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-virtual {v0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 312
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 313
    return-void
.end method

.method public onProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 296
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$3;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$500(Lcom/game91/framework/dialog/UpdateDialog;)Lcom/game91/framework/widget/NumberProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game91/framework/widget/NumberProgressBar;->setProgress(F)V

    .line 297
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$3;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/game91/framework/dialog/UpdateDialog;->access$002(Lcom/game91/framework/dialog/UpdateDialog;Z)Z

    .line 302
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$3;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$100(Lcom/game91/framework/dialog/UpdateDialog;)V

    .line 303
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$3;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$500(Lcom/game91/framework/dialog/UpdateDialog;)Lcom/game91/framework/widget/NumberProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/game91/framework/widget/NumberProgressBar;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$3;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$600(Lcom/game91/framework/dialog/UpdateDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$3;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$600(Lcom/game91/framework/dialog/UpdateDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 306
    return-void
.end method

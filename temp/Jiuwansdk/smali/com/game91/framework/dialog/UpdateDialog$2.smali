.class Lcom/game91/framework/dialog/UpdateDialog$2;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/dialog/UpdateDialog;->createContentView()Landroid/view/View;
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
    .line 190
    iput-object p1, p0, Lcom/game91/framework/dialog/UpdateDialog$2;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$2;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$300(Lcom/game91/framework/dialog/UpdateDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$2;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-virtual {v0}, Lcom/game91/framework/dialog/UpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$2;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-virtual {v0}, Lcom/game91/framework/dialog/UpdateDialog;->dismiss()V

    .line 198
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$2;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$400(Lcom/game91/framework/dialog/UpdateDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$2;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$400(Lcom/game91/framework/dialog/UpdateDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/game91/framework/dialog/UpdateDialog$2;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-virtual {v1}, Lcom/game91/framework/dialog/UpdateDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method

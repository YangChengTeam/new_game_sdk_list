.class Lcom/game91/framework/dialog/NoticeDialog$1;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/dialog/NoticeDialog;->createContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/dialog/NoticeDialog;


# direct methods
.method constructor <init>(Lcom/game91/framework/dialog/NoticeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/dialog/NoticeDialog;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/game91/framework/dialog/NoticeDialog$1;->this$0:Lcom/game91/framework/dialog/NoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/game91/framework/dialog/NoticeDialog$1;->this$0:Lcom/game91/framework/dialog/NoticeDialog;

    invoke-virtual {v0}, Lcom/game91/framework/dialog/NoticeDialog;->dismiss()V

    .line 88
    iget-object v0, p0, Lcom/game91/framework/dialog/NoticeDialog$1;->this$0:Lcom/game91/framework/dialog/NoticeDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/NoticeDialog;->access$000(Lcom/game91/framework/dialog/NoticeDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/game91/framework/dialog/NoticeDialog$1;->this$0:Lcom/game91/framework/dialog/NoticeDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/NoticeDialog;->access$000(Lcom/game91/framework/dialog/NoticeDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 91
    :cond_0
    return-void
.end method

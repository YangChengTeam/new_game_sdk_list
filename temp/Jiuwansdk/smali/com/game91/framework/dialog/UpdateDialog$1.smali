.class Lcom/game91/framework/dialog/UpdateDialog$1;
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
    .line 139
    iput-object p1, p0, Lcom/game91/framework/dialog/UpdateDialog$1;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$1;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$000(Lcom/game91/framework/dialog/UpdateDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$1;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$100(Lcom/game91/framework/dialog/UpdateDialog;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/game91/framework/dialog/UpdateDialog$1;->this$0:Lcom/game91/framework/dialog/UpdateDialog;

    invoke-static {v0}, Lcom/game91/framework/dialog/UpdateDialog;->access$200(Lcom/game91/framework/dialog/UpdateDialog;)V

    goto :goto_0
.end method
